#!/bin/bash

mkdir /home/bl/docker/mealie/
cp files/mealie.yml /home/bl/docker/mealie/docker-compose.yml
docker-compose -f /home/bl/docker/mealie/docker-compose.yml up -d
