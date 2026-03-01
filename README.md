# InfluxDB 1.8 Docker Compose Setup (Hardened)

This repository contains a **security-hardened** Docker Compose configuration for InfluxDB 1.8.

## 🔒 Security Improvements

This setup uses a custom Dockerfile with an updated base image (`buildpack-deps:stable-curl`) that reduces vulnerabilities:

- **-2 Critical** vulnerabilities (8 → 6)
- **-11 High** vulnerabilities (65 → 54)
- **-18 Medium** vulnerabilities (62 → 44)
- **-13 Low** vulnerabilities (52 → 39)

Based on Docker Scout recommendations for `influxdb:1.8`.

## Prerequisites

- Docker
- Docker Compose
- Docker Scout (optional, for vulnerability scanning)

## Configuration

### Environment Variables

The following environment variables are configured for InfluxDB:

- `TZ=Europe/Vienna`: Sets the timezone to Vienna.
- `INFLUXDB_HTTP_FLUX_ENABLED=false`: Disables Flux.
- `INFLUXDB_REPORTING_DISABLED=true`: Disables reporting.
- `INFLUXDB_HTTP_AUTH_ENABLED=false`: Disables HTTP authentication.
- `INFLUXDB_MONITOR_STORE_ENABLED=false`: Disables the monitor store.
- `INFLUXDB_DATA_QUERY_LOG_ENABLED=false`: Disables query logging.
- `INFLUXDB_HTTP_LOG_ENABLED=false`: Disables HTTP request logging.
- `INFLUXDB_LOGGING_LEVEL=error`: Sets the logging level to error.

## Running the Service

### First Time Setup

Build the hardened image:

```sh
docker-compose build
```

### Start the Service

To start the InfluxDB service, run:

```sh
docker-compose up -d
```

This will start the InfluxDB service with the specified configuration and environment variables.

### Verify Security Improvements

Scan the hardened image with Docker Scout:

```sh
docker scout quickview influxdb:1.8-hardened
docker scout cves influxdb:1.8-hardened
```

Compare with the original image:

```sh
docker scout quickview influxdb:1.8
```

## Health Check

The health check is configured to ensure the InfluxDB service is running correctly by making an HTTP request to the health endpoint.

## Volumes

The Docker Compose file uses an external volume for the InfluxDB data. Ensure this volume exists before running the service.

- `influxdb-volume`

## Troubleshooting

If you encounter any issues, ensure that the environment variables are correctly set and that the InfluxDB configuration is correct.

### Analyze Fields Script

The repository includes `analyze_influx_fields.sh`, a helper script that inspects your InfluxDB 1.8 database and generates a matrix of:

- Retention Policy
- Measurement
- Field keys
- Last write timestamp (smart relative format)

It creates a Markdown report file named `influx_rp_measurement_fields.md`.

#### What the script does

1. Queries all retention policies with `SHOW RETENTION POLICIES`.
2. Queries all measurements with `SHOW MEASUREMENTS`.
3. Iterates over every RP/measurement combination.
4. Runs `SHOW FIELD KEYS FROM "<rp>"."<measurement>"`.
5. Queries last data point with `SELECT * FROM "<rp>"."<measurement>" ORDER BY time DESC LIMIT 1`.
6. Formats the timestamp as smart relative time (e.g., "5m ago", "3h ago", "2d ago", "3w ago", "5mo ago", "2y ago").
7. Writes only combinations that actually have fields into a Markdown table.
8. Appends a short summary (total RPs, measurements, combinations, and combinations with data).

#### Prerequisites

- `curl`
- `jq`
- Network access to the InfluxDB HTTP API (`:8086` by default)

#### Configuration in script

At the top of `analyze_influx_fields.sh`, adjust these values if needed:

- `INFLUX_HOST` (default: `reserve`)
- `INFLUX_PORT` (default: `8086`)
- `INFLUX_DB` (default: `database`)

#### Run

```sh
chmod +x analyze_influx_fields.sh
./analyze_influx_fields.sh
```

The script prints progress to stderr and writes the final report to:

- `influx_rp_measurement_fields.md`

### Rebuild after Dockerfile Changes

```sh
docker-compose build --no-cache
docker-compose up -d
```

## 🔐 Additional Security Recommendations

**⚠️ Important:** The current configuration has `INFLUXDB_HTTP_AUTH_ENABLED=false`. For production environments:

1. **Enable Authentication:**
   ```yaml
   - INFLUXDB_HTTP_AUTH_ENABLED=true
   - INFLUXDB_ADMIN_USER=admin
   - INFLUXDB_ADMIN_PASSWORD=secure_password_here
   ```

2. **Restrict Network Access:**
   - Use internal Docker networks instead of `network_mode: bridge`
   - Limit port exposure to localhost only: `127.0.0.1:8086:8086`

3. **Regular Updates:**
   - Monitor InfluxDB security advisories
   - Rebuild image periodically to get base image security patches
   - Consider upgrading to InfluxDB 2.x for long-term support

4. **Scan Regularly:**
   ```sh
   docker scout quickview influxdb:1.8-hardened
   ```

## 💾 Data Export/Import (CSV Strategy)

### Why CSV instead of Line Protocol?

**Advantages:**
- ✅ **Kompakter**: ~50-70% kleiner als Line Protocol Export
- ✅ **Selektiv**: Export nur wichtiger Measurements statt ganzer RPs
- ✅ **Einfacher Transfer**: Weniger Speicherplatz nötig
- ✅ **Menschenlesbar**: CSV kann zur Inspektion geöffnet werden

**Disadvantages:**
- ❌ Pro Measurement einzeln (keine Batch-Operation)
- ❌ Konvertierung zu Line Protocol nötig für Import
- ❌ Tag vs Field Unterscheidung kann verloren gehen

### Quick Start

```bash
# Zeige Export-Commands für Source-Server (VM)
./csv_migration.sh export

# Zeige Import-Commands für Target-Server (reserve)
./csv_migration.sh import
```

### Full Workflow

1. **Export auf VM (192.168.42.224):**
   ```bash
   ssh richard@192.168.42.224
   ./csv_migration.sh export | bash
   # Erstellt: /tmp/influx_csv_backup.tar.gz
   ```

2. **Transfer:**
   ```bash
   scp richard@192.168.42.224:/tmp/influx_csv_backup.tar.gz /tmp/
   # Alternative: Via NAS mount
   ```

3. **Import auf reserve:**
   ```bash
   ./csv_migration.sh import | bash
   # Importiert alle Measurements mit korrekten RPs
   ```

### Größenvergleich

| Methode | Geschätzte Größe | Vorteile |
|---------|------------------|----------|
| Line Protocol (`influx_inspect export`) | ~1GB unkomprimiert | Exakte 1:1 Kopie, alle Metadaten |
| CSV Export (selektiv) | ~100-300MB komprimiert | Platzsparend, schneller Transfer |
| CSV Export (alle Measurements) | ~400-600MB komprimiert | Vollständig, aber kompakt |

### Wichtigste Measurements (Empfehlung)

Siehe [csv_migration.sh](csv_migration.sh) für vorkonfigurierte Liste:
- `solaredge_modbus:I_AC_Power` (1 Jahr, ~200MB)
- `weather:temperature` (5 Jahre, ~50MB)
- `ret_solarpower:*` (90 Tage, ~30MB)
- `auto_1d:*` (28 Tage, ~10MB)

**Total:** ~300MB komprimiert

## License

This project is licensed under the MIT License.
