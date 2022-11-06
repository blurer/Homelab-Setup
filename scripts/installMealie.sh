#!/bin/bash

mkdir /mnt/docker/mealie/
cp files/mealie.yml /mnt/docker/mealie/docker-compose.yml
docker-compose -f /mnt/docker/mealie/docker-compose.yml up -d
