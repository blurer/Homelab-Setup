#!/bin/bash

mkdir /mnt/data/speedtest-tracker/
cp files/speedtestlogger.yml /mnt/data/speedtest-tracker/docker-compose.yml
docker-compose -f /mnt/data/speedtest-tracker/docker-compose.yml up -d
