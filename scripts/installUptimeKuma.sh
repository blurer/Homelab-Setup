#!/bin/bash

mkdir /home/bl/docker/uptime/
cp files/uptime-kuma.yml /home/bl/docker/uptime/docker-compose.yml
docker-compose -f /home/bl/docker/uptime/docker-compose.yml up -d
