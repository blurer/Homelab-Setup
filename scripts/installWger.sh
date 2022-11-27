#!/bin/bash

mkdir /home/bl/docker/wger/
git clone git@github.com:blurer/docker-wger.git /home/bl/docker/wger/
docker-compose -f /home/bl/docker/wger/docker-compose.yml up -d
