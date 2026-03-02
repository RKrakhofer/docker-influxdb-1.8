
#!/bin/sh
set -eu

# Robust end-to-end healthcheck for InfluxDB 1.8
# - create DB if missing (noop if exists)
# - write a point with a unique check_id tag (fail on non-2xx/204)
# - query the point back (fail if HTTP !=200 or no series / error)
# - delete the point (best-effort; does not fail health)

HOST="${1:-localhost:8086}"
DB="healthcheck"
MEAS="hc_healthcheck"
TIMEOUT=10
CURL="curl -sS --max-time $TIMEOUT"

cleanup() {
  [ -n "${TMPWRITE:-}" ] && [ -f "$TMPWRITE" ] && rm -f "$TMPWRITE"
  [ -n "${TMPQUERY:-}" ] && [ -f "$TMPQUERY" ] && rm -f "$TMPQUERY"
}
trap cleanup EXIT INT TERM

# Ensure DB exists (ignore errors)
# Usage: influx-healthcheck.sh [host:port]
# Example: influx-healthcheck.sh reserve:8086
${CURL} -XPOST "http://${HOST}/query" --data-urlencode 'q=CREATE DATABASE "healthcheck"' >/dev/null 2>&1 || true

ID=$(date +%s%N)
TS=$(date +%s)
NS_TS=$((TS * 1000000000))
LINE="$MEAS,check_id=$ID value=1 $NS_TS"

# Write point: capture HTTP code
TMPWRITE=$(mktemp)
WRITE_CODE=$(${CURL} -w '%{http_code}' -o "$TMPWRITE" -i -XPOST "http://${HOST}/write?db=${DB}" --data-binary @- <<EOF
$LINE
EOF
)

if [ "$WRITE_CODE" != "204" ] && [ "$WRITE_CODE" != "200" ]; then
  echo "write failed: http_status=$WRITE_CODE" >&2
  cat "$TMPWRITE" >&2 || true
  exit 1
fi

# small pause before query
sleep 0.5

# Query the point
Q="SELECT * FROM \"${MEAS}\" WHERE check_id='${ID}' LIMIT 1"
TMPQUERY=$(mktemp)
QUERY_CODE=$(${CURL} -w '%{http_code}' -o "$TMPQUERY" -G "http://${HOST}/query?db=${DB}" --data-urlencode "q=${Q}" 2>/dev/null || true)

# Validate query response
if [ "$QUERY_CODE" != "200" ]; then
  echo "query failed: http_status=$QUERY_CODE" >&2
  cat "$TMPQUERY" >&2 || true
  exit 2
fi

if command -v jq >/dev/null 2>&1; then
  if jq -e '.error' "$TMPQUERY" >/dev/null 2>&1; then
    echo "query returned error: $(jq -r '.error' "$TMPQUERY")" >&2
    exit 2
  fi
  if ! jq -e '.results[]?.series' "$TMPQUERY" >/dev/null 2>&1; then
    echo "query returned no series" >&2
    exit 2
  fi
else
  if grep -q '"error"' "$TMPQUERY"; then
    echo "query returned error (fallback)" >&2
    cat "$TMPQUERY" >&2 || true
    exit 2
  fi
  if ! grep -q '"series"' "$TMPQUERY"; then
    echo "query returned no series (fallback)" >&2
    exit 2
  fi
fi

# Best-effort cleanup: delete the point by tag (do not fail on error)
DEL="DELETE FROM \"${MEAS}\" WHERE check_id='${ID}'"
${CURL} -XPOST "http://${HOST}/query?db=${DB}" --data-urlencode "q=${DEL}" >/dev/null 2>&1 || echo "cleanup warning: delete failed" >&2

exit 0
