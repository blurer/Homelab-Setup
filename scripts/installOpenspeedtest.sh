#!/bin/bash

mkdir /mnt/data/openspeedtest/
cp files/openspeedtest.yml /mnt/data/openspeedtest/docker-compose.yml
docker-compose -f /mnt/data/openspeedtest/docker-compose.yml up -d