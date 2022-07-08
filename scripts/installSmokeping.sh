#!/bin/bash

mkdir $HOME/docker/smokeping/
cp files/smokeping.yml $HOME/docker/smokeping/docker-compose.yml
docker-compose -f $HOME/docker/smokeping/docker-compose.yml up -d
