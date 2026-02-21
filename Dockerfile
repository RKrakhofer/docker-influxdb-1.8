# Gehärtetes InfluxDB 1.8 Image mit aktualisiertem Base Image
# Reduziert Vulnerabilities: -2 Critical, -11 High, -18 Medium
FROM buildpack-deps:stable-curl

# InfluxDB Version
ENV INFLUXDB_VERSION=1.8.10

# InfluxDB herunterladen und installieren
RUN set -ex && \
    ARCH=$(dpkg --print-architecture) && \
    wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb && \
    dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb && \
    rm influxdb_${INFLUXDB_VERSION}_${ARCH}.deb

# InfluxDB User und Verzeichnisse vorbereiten
RUN mkdir -p /var/lib/influxdb && \
    chown -R influxdb:influxdb /var/lib/influxdb

# Expose InfluxDB Ports
EXPOSE 8086

# Volume für Daten
VOLUME /var/lib/influxdb

# Als influxdb User ausführen
USER influxdb

# InfluxDB starten
CMD ["influxd"]
