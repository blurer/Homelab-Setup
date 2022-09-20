#!/bin/bash

mkdir /mnt/data/uptime/
cp files/uptime-kuma.yml /mnt/data/uptime/docker-compose.yml
docker-compose -f /mnt/data/uptime/docker-compose.yml up -d
