#!/bin/bash

# InfluxDB connection details
INFLUX_HOST="reserve"
INFLUX_PORT="8086"
INFLUX_DB="database"

# Output file
OUTPUT="influx_rp_measurement_fields.md"

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
echo "Database: **database**" >> $OUTPUT
echo "" >> $OUTPUT
echo "Generated: $(date)" >> $OUTPUT
echo "" >> $OUTPUT
echo "| Retention Policy | Measurement | Fields |" >> $OUTPUT
echo "|-----------------|-------------|--------|" >> $OUTPUT

# Counter for progress
total=$((${#RPS[@]} * ${#MEASUREMENTS[@]}))
current=0

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
    
    # Only add to table if fields exist
    if [ -n "$fields" ]; then
      echo "| $rp | $measurement | $fields |" >> $OUTPUT
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

echo "Done! Results saved to $OUTPUT"
