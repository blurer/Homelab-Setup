#!/bin/bash

mkdir /mnt/docker/speedtest-tracker/
cp files/speedtestlogger.yml /mnt/docker/speedtest-tracker/docker-compose.yml
docker-compose -f /mnt/docker/speedtest-tracker/docker-compose.yml up -d
