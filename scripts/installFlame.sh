#!/bin/bash

mkdir /mnt/data/flame/
cp files/flame.yml /mnt/data/flame/docker-compose.yml
docker-compose -f /mnt/data/flame/docker-compose.yml up -d
