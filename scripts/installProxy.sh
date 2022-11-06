#!/bin/bash

mkdir /mnt/docker/proxy/
cp files/proxy.yml /mnt/docker/proxy/docker-compose.yml
docker-compose -f /mnt/docker/proxy/docker-compose.yml up -d
