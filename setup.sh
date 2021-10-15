#!/bin/bash

echo "[Create Structure]"
mkdir $HOME/docker
mkdir $HOME/docker/proxy/
mkdir $HOME/docker/dns/
mkdir $HOME/docker/uptime-kuma/
#mkdir $HOME/docker/portainer/
#mkdir $HOME/docker/

echo "[Start Proxy]"
cp files/proxy.yml $HOME/docker/proxy/docker-compose.yml
docker-compose -f $HOME/docker/proxy/docker-compose.yml up -d

echo "[Uptime Kuma]"
cp files/uptime-kuma.yml $HOME/docker/uptime-kuma/docker-compose.yml
docker-compose -f $HOME/docker/uptime-kuma/docker-compose.yml up -d

echo "[Portainer]"


echo "[DNS]"
cp files/dns.yml $HOME/docker/dns/docker-compose.yml
docker-compose -f $HOME/docker/dns/docker-compose.yml up -d

sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved