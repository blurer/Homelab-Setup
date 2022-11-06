#!/bin/bash

mkdir /mnt/docker/smokeping/
cp files/smokeping.yml /mnt/docker/smokeping/docker-compose.yml
docker-compose -f /mnt/docker/smokeping/docker-compose.yml up -d
