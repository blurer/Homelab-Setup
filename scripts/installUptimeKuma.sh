#!/bin/bash

mkdir /mnt/docker/uptime/
cp files/uptime-kuma.yml /mnt/docker/uptime/docker-compose.yml
docker-compose -f /mnt/docker/uptime/docker-compose.yml up -d
