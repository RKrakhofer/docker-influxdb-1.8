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

## License

This project is licensed under the MIT License.
