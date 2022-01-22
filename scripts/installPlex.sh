#!/bin/bash

mkdir $HOME/docker/plex/
cp files/plex.yml $HOME/docker/plex/docker-compose.yml
docker-compose -f $HOME/docker/plex/docker-compose.yml up -d
