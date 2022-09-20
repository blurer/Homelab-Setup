#!/bin/bash

mkdir /mnt/data/smokeping/
cp files/smokeping.yml /mnt/data/smokeping/docker-compose.yml
docker-compose -f /mnt/data/smokeping/docker-compose.yml up -d
