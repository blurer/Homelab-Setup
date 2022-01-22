#!/bin/bash

mkdir $HOME/docker/uptime/
cp files/uptime-kuma.yml $HOME/docker/uptime/docker-compose.yml
docker-compose -f $HOME/docker/uptime/docker-compose.yml up -d
