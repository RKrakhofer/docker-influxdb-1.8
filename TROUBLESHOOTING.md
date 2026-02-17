# Troubleshooting: Container Restart-Loop

## Problem
Container lief in Restart-Loop mit `permission denied` Fehlern beim Zugriff auf `/var/lib/influxdb/data`.

## Ursache
- **Altes Setup**: Offizielle `influxdb:1.8` Image lief als **root** (UID 0) → hatte universelle Schreibrechte
- **Neues gehärtetes Setup**: Container läuft als `influxdb` User (UID 999:999) → Security Best Practice
- **Volume**: Bestehende Daten gehörten UID 144:153 (aus älterem Setup)
- **Konflikt**: UID 999 konnte nicht auf Dateien von UID 144 zugreifen

## Lösung
UID/GID im Container an das bestehende Volume angepasst:

```dockerfile
# UID/GID des influxdb Users an das vorhandene Volume anpassen (144:153)
RUN groupmod -g 153 influxdb && \
    usermod -u 144 -g 153 influxdb && \
    chown -R influxdb:influxdb /var/lib/influxdb
```

Dann Berechtigungen im Volume korrigiert:
```bash
docker-compose run --rm --user root influxdb chown -R influxdb:influxdb /var/lib/influxdb
docker-compose up -d
```

## Ergebnis
✅ Container läuft stabil als non-root User mit korrekten Berechtigungen
