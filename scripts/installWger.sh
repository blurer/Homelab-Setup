#!/bin/bash

mkdir /mnt/data/wger/
git clone git@github.com:blurer/docker-wger.git /mnt/data/wger/
docker-compose -f /mnt/data/wger/docker-compose.yml up -d
