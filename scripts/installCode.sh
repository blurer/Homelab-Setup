#!/bin/bash

mkdir $HOME/docker/code/
cp files/code.yml $HOME/docker/code/docker-compose.yml
docker-compose -f $HOME/docker/code/docker-compose.yml up -d
