#!/bin/bash
#
# Analyzes InfluxDB retention policies, measurements, and fields
# Usage: ./analyze_influx_fields.sh [INFLUX_HOST]
#   INFLUX_HOST: Optional, defaults to "reserve"
#

# InfluxDB connection details
INFLUX_HOST="${1:-reserve}"
INFLUX_PORT="8086"
INFLUX_DB="database"

# Output file
OUTPUT="influx_rp_measurement_fields.md"

# Function to convert timestamp to smart relative time
smart_relative_time() {
  local timestamp="$1"
  
  # Remove nanoseconds from InfluxDB format (2025-08-17T06:23:20.645022307Z -> 2025-08-17T06:23:20Z)
  timestamp=$(echo "$timestamp" | sed 's/\.[0-9]*Z/Z/')
  
  # Convert ISO8601 to epoch (BusyBox date requires -D for format specification)
  # Use TZ=UTC to ensure the timestamp is interpreted as UTC (the "Z" suffix means UTC)
  local then=$(TZ=UTC date -D "%Y-%m-%dT%H:%M:%SZ" -d "$timestamp" +%s 2>/dev/null)
  if [ -z "$then" ]; then
    echo "unknown"
    return
  fi
  
  local now=$(date +%s)
  local diff=$((now - then))
  
  # Calculate time units
  local minutes=$((diff / 60))
  local hours=$((diff / 3600))
  local days=$((diff / 86400))
  local weeks=$((diff / 604800))
  local months=$((diff / 2592000))  # ~30 days
  local years=$((diff / 31536000))
  
  # Smart formatting based on age
  if [ $diff -lt 3600 ]; then
    echo "${minutes}m ago"
  elif [ $diff -lt 86400 ]; then
    echo "${hours}h ago"
  elif [ $diff -lt 604800 ]; then
    echo "${days}d ago"
  elif [ $diff -lt 2592000 ]; then
    echo "${weeks}w ago"
  elif [ $diff -lt 31536000 ]; then
    echo "${months}mo ago"
  else
    echo "${years}y ago"
  fi
}

echo "Connecting to InfluxDB at $INFLUX_HOST:$INFLUX_PORT (database: $INFLUX_DB)..." >&2
echo "Fetching retention policies from database '$INFLUX_DB'..." >&2
# Fetch all Retention Policies dynamically
RPS_JSON=$(curl -s -G "http://$INFLUX_HOST:$INFLUX_PORT/query" \
  --data-urlencode "db=$INFLUX_DB" \
  --data-urlencode "q=SHOW RETENTION POLICIES")

# Extract RP names from JSON
mapfile -t RPS < <(echo "$RPS_JSON" | jq -r '.results[0].series[0].values[]?[0]')

if [ ${#RPS[@]} -eq 0 ]; then
  echo "ERROR: No retention policies found!" >&2
  exit 1
fi

echo "Found ${#RPS[@]} retention policies: ${RPS[*]}" >&2

echo "Fetching measurements from database '$INFLUX_DB'..." >&2
# Fetch all Measurements dynamically
MEASUREMENTS_JSON=$(curl -s -G "http://$INFLUX_HOST:$INFLUX_PORT/query" \
  --data-urlencode "db=$INFLUX_DB" \
  --data-urlencode "q=SHOW MEASUREMENTS")

# Extract measurement names from JSON
mapfile -t MEASUREMENTS < <(echo "$MEASUREMENTS_JSON" | jq -r '.results[0].series[0].values[]?[0]')

if [ ${#MEASUREMENTS[@]} -eq 0 ]; then
  echo "ERROR: No measurements found!" >&2
  exit 1
fi

echo "Found ${#MEASUREMENTS[@]} measurements" >&2

# Create markdown table header
echo "# InfluxDB Retention Policy × Measurement × Fields Matrix" > $OUTPUT
echo "" >> $OUTPUT
echo "Host: **$INFLUX_HOST:$INFLUX_PORT**  " >> $OUTPUT
echo "Database: **$INFLUX_DB**" >> $OUTPUT
echo "" >> $OUTPUT
echo "Generated: $(date)" >> $OUTPUT
echo "" >> $OUTPUT
echo "## Measurements per Retention Policy" >> $OUTPUT
echo "" >> $OUTPUT
echo "| Retention Policy | Measurement | Fields | Last Written |" >> $OUTPUT
echo "|-----------------|-------------|--------|--------------|" >> $OUTPUT

# Counter for progress
total=$((${#RPS[@]} * ${#MEASUREMENTS[@]}))
current=0

# Array to track used RPs
declare -A used_rps

# Iterate through all combinations
for rp in "${RPS[@]}"; do
  for measurement in "${MEASUREMENTS[@]}"; do
    current=$((current + 1))
    echo "Processing $current/$total: $rp.$measurement" >&2
    
    # Query for fields in this RP/measurement combination
    query="SHOW FIELD KEYS FROM \"$rp\".\"$measurement\""
    result=$(curl -s -G "http://$INFLUX_HOST:$INFLUX_PORT/query" \
      --data-urlencode "db=$INFLUX_DB" \
      --data-urlencode "q=$query")
    
    # Extract field names from JSON response
    fields=$(echo "$result" | jq -r '.results[0].series[0].values[]?[0]' 2>/dev/null | tr '\n' ', ' | sed 's/,$//')
    
    # Only process if fields exist
    if [ -n "$fields" ]; then
      # Mark this RP as used
      used_rps[$rp]=1
      
      # Query for last timestamp
      last_query="SELECT * FROM \"$rp\".\"$measurement\" ORDER BY time DESC LIMIT 1"
      last_result=$(curl -s -G "http://$INFLUX_HOST:$INFLUX_PORT/query" \
        --data-urlencode "db=$INFLUX_DB" \
        --data-urlencode "q=$last_query")
      
      # Extract timestamp
      last_time=$(echo "$last_result" | jq -r '.results[0].series[0].values[0][0]' 2>/dev/null)
      
      if [ "$last_time" != "null" ] && [ -n "$last_time" ]; then
        relative_time=$(smart_relative_time "$last_time")
      else
        relative_time="never"
      fi
      
      echo "| $rp | $measurement | $fields | $relative_time |" >> $OUTPUT
    fi
  done
done

echo "" >> $OUTPUT
echo "---" >> $OUTPUT
echo "" >> $OUTPUT
echo "**Summary:**" >> $OUTPUT
echo "- Total Retention Policies: ${#RPS[@]}" >> $OUTPUT
echo "- Total Measurements: ${#MEASUREMENTS[@]}" >> $OUTPUT
echo "- Possible Combinations: $total" >> $OUTPUT
combinations_with_data=$(grep -c '^|' $OUTPUT)
combinations_with_data=$((combinations_with_data - 2))  # Subtract header and separator lines
echo "- Combinations with Data: $combinations_with_data" >> $OUTPUT

# Add Retention Policy details (only used ones)
echo "" >> $OUTPUT
echo "---" >> $OUTPUT
echo "" >> $OUTPUT
echo "## Retention Policies (in use)" >> $OUTPUT
echo "" >> $OUTPUT
echo "| Name | Duration | Shard Duration | Replication | Default |" >> $OUTPUT
echo "|------|----------|----------------|-------------|---------|" >> $OUTPUT

# Filter RPs to only show used ones
for rp in "${!used_rps[@]}"; do
  echo "$RPS_JSON" | jq -r --arg rp "$rp" '.results[0].series[0].values[]? | 
    select(.[0] == $rp) |
    "| \(.[0]) | \(.[1]) | \(.[2]) | \(.[3]) | \(if .[4] then "✓" else "" end) |"
  '
done | sort >> $OUTPUT

# Fetch and write Continuous Queries
echo "Fetching continuous queries..." >&2
CQS_JSON=$(curl -s -G "http://$INFLUX_HOST:$INFLUX_PORT/query" \
  --data-urlencode "q=SHOW CONTINUOUS QUERIES")

echo "" >> $OUTPUT
echo "---" >> $OUTPUT
echo "" >> $OUTPUT
echo "## Continuous Queries" >> $OUTPUT
echo "" >> $OUTPUT
echo "| Name | Interval | Source (RP.Measurement) | Destination (RP.Measurement) |" >> $OUTPUT
echo "|------|----------|------------------------|------------------------------|" >> $OUTPUT

echo "$CQS_JSON" | jq -r '
  .results[0].series[]? |
  select(.name == "database") |
  .values[]? |
  .[1]
' | while IFS= read -r query; do
  name=$(echo "$query" | sed -n 's/.*CONTINUOUS QUERY \([^ ]*\).*/\1/p')
  interval=$(echo "$query" | sed -n 's/.*GROUP BY time(\([^)]*\)).*/\1/p')
  src=$(echo "$query" | sed -n 's/.*FROM "database"\.\([^ ]*\).*/\1/p' | head -1)
  dst=$(echo "$query" | sed -n 's/.*INTO "database"\.\([^ ]*\).*/\1/p' | head -1)
  echo "| $name | $interval | $src | $dst |" >> $OUTPUT
done

cq_count=$(echo "$CQS_JSON" | jq '[.results[0].series[]? | select(.name == "database") | .values[]?] | length')
echo "- Continuous Queries: ${cq_count:-0}" >> $OUTPUT

echo "" >> $OUTPUT
echo "### Continuous Query Details" >> $OUTPUT
echo "" >> $OUTPUT
echo "$CQS_JSON" | jq -r '
  .results[0].series[]? |
  select(.name == "database") |
  .values[]? |
  "**\(.[0])**\n```sql\n\(.[1])\n```\n"
' >> $OUTPUT

echo "Done! Results saved to $OUTPUT"
