#!/bin/bash

mkdir $HOME/docker/firefly/
cp files/firefly.yml $HOME/docker/firefly/docker-compose.yml
cp files/firefly.env $HOME/docker/firefly/.env
docker-compose -f $HOME/docker/firefly/docker-compose.yml up -d
