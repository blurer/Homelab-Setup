#!/bin/bash

mkdir $HOME/docker/flame/
cp files/flame.yml $HOME/docker/flame/docker-compose.yml
docker-compose -f $HOME/docker/flame/docker-compose.yml up -d
