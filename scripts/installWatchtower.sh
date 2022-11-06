#!/bin/bash

mkdir /mnt/docker/watchtower/
cp files/watchtower.yml /mnt/docker/watchtower/docker-compose.yml
docker-compose -f /mnt/docker/watchtower/docker-compose.yml up -d