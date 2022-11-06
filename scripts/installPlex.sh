#!/bin/bash

mkdir /mnt/docker/plex/
cp files/plex.yml /mnt/docker/plex/docker-compose.yml
docker-compose -f /mnt/docker/plex/docker-compose.yml up -d
