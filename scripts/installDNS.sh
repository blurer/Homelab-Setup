#!/bin/bash

mkdir $HOME/docker/dns/
cp files/dns.yml $HOME/docker/dns/docker-compose.yml
docker-compose -f $HOME/docker/dns/docker-compose.yml up -d
