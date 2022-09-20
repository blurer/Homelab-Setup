#!/bin/bash

mkdir /mnt/data/mealie/
cp files/mealie.yml /mnt/data/mealie/docker-compose.yml
docker-compose -f /mnt/data/mealie/docker-compose.yml up -d
