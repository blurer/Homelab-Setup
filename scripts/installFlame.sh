#!/bin/bash

mkdir /home/bl/docker/flame/
cp files/flame.yml /home/bl/docker/flame/docker-compose.yml
docker-compose -f /home/bl/docker/flame/docker-compose.yml up -d
