#!/bin/bash

mkdir /home/bl/docker/speedtest-tracker/
cp files/speedtestlogger.yml /home/bl/docker/speedtest-tracker/docker-compose.yml
docker-compose -f /home/bl/docker/speedtest-tracker/docker-compose.yml up -d
