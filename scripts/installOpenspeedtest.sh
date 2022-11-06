#!/bin/bash

mkdir /mnt/docker/openspeedtest/
cp files/openspeedtest.yml /mnt/docker/openspeedtest/docker-compose.yml
docker-compose -f /mnt/docker/openspeedtest/docker-compose.yml up -d