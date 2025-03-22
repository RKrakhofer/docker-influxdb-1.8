# InfluxDB Docker Compose Setup

This repository contains a Docker Compose configuration for setting up an InfluxDB instance.

## Prerequisites

- Docker
- Docker Compose

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

To start the InfluxDB service, run the following command:

```sh
docker-compose up
```

This will start the InfluxDB service with the specified configuration and environment variables.

## Health Check

The health check is configured to ensure the InfluxDB service is running correctly by making an HTTP request to the health endpoint.

## Volumes

The Docker Compose file uses an external volume for the InfluxDB data. Ensure this volume exists before running the service.

- `influxdb-volume`

## Troubleshooting

If you encounter any issues, ensure that the environment variables are correctly set and that the InfluxDB configuration is correct.

## License

This project is licensed under the MIT License.
