#!/bin/bash

mkdir /home/bl/docker/smokeping/
cp files/smokeping.yml /home/bl/docker/smokeping/docker-compose.yml
docker-compose -f /home/bl/docker/smokeping/docker-compose.yml up -d
