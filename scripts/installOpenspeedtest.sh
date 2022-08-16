#!/bin/bash

mkdir $HOME/docker/openspeedtest/
cp files/openspeedtest.yml $HOME/docker/openspeedtest/docker-compose.yml
docker-compose -f $HOME/docker/openspeedtest/docker-compose.yml up -d