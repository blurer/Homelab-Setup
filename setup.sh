#!/bin/bash

echo "Create Structure"
mkdir $HOME/docker
mkdir $HOME/docker/proxy/
#mkdir $HOME/docker/dns/
#mkdir $HOME/docker/uptime-kuma/
#mkdir $HOME/docker/portainer/
#mkdir $HOME/docker/

echo "Start Proxy"
cp proxy.yml $HOME/docker/proxy/docker-compose.yml