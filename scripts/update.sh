#!/bin/bash

echo "Pulling latest Plex image..."
docker-compose pull plex

echo "Restarting Plex container"
docker-compose up -d plex

echo "Removing old images"
docker image prune -f

echo "Done."
