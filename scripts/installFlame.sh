#!/bin/bash

mkdir /mnt/docker/flame/
cp files/flame.yml /mnt/docker/flame/docker-compose.yml
docker-compose -f /mnt/docker/flame/docker-compose.yml up -d
