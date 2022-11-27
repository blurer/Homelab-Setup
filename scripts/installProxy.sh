#!/bin/bash

mkdir /home/bl/docker/proxy/
cp files/proxy.yml /home/bl/docker/proxy/docker-compose.yml
docker-compose -f /home/bl/docker/proxy/docker-compose.yml up -d
