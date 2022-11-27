#!/bin/bash

mkdir /home/bl/docker/openspeedtest/
cp files/openspeedtest.yml /home/bl/docker/openspeedtest/docker-compose.yml
docker-compose -f /home/bl/docker/openspeedtest/docker-compose.yml up -d