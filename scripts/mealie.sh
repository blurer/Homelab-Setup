#!/bin/bash

mkdir $HOME/docker/mealie/
cp files/mealie.yml $HOME/docker/mealie/docker-compose.yml
docker-compose -f $HOME/docker/mealie/docker-compose.yml up -d
