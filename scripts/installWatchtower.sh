#!/bin/bash

mkdir /home/bl/docker/watchtower/
cp files/watchtower.yml /home/bl/docker/watchtower/docker-compose.yml
docker-compose -f /home/bl/docker/watchtower/docker-compose.yml up -d