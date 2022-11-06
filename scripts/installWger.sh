#!/bin/bash

mkdir /mnt/docker/wger/
git clone git@github.com:blurer/docker-wger.git /mnt/docker/wger/
docker-compose -f /mnt/docker/wger/docker-compose.yml up -d
