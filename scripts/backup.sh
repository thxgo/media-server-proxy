#!/bin/bash

cd "$(dirname "$0")/.."
BACKUP_DIR="./backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/plex-config-$DATE.tar.gz"

mkdir -p $BACKUP_DIR

echo "Stopping plex..."
docker-compose stop plex

echo "Creating backup..."
tar -czf $BACKUP_FILE ./config/plex

echo "Starting plex..."
docker-compose start plex

echo "Done. backup saved at $BACKUP_FILE"
