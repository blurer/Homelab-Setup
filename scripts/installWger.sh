#!/bin/bash

mkdir $HOME/docker/wger/
git clone git@github.com:blurer/docker-wger.git $HOME/docker/wger/
docker-compose -f $HOME/docker/wger/docker-compose.yml up -d
