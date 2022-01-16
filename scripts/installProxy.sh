#!/bin/bash

mkdir $HOME/docker/proxy/
cp files/proxy.yml $HOME/docker/proxy/docker-compose.yml
docker-compose -f $HOME/docker/proxy/docker-compose.yml up -d
