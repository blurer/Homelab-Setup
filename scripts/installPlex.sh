#!/bin/bash

mkdir /home/bl/docker/plex/
cp files/plex.yml /home/bl/docker/plex/docker-compose.yml
docker-compose -f /home/bl/docker/plex/docker-compose.yml up -d
