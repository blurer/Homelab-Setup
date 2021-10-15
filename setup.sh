#!/bin/bash

echo "[Create Structure]"
mkdir $HOME/docker
mkdir $HOME/docker/proxy/
mkdir $HOME/docker/dns/
mkdir $HOME/docker/uptime-kuma/
mkdir $HOME/docker/portainer/
mkdir $HOME/docker/flame/

echo "[Start Proxy]"
cp files/proxy.yml $HOME/docker/proxy/docker-compose.yml
docker-compose -f $HOME/docker/proxy/docker-compose.yml up -d

echo "[Uptime Kuma]"
cp files/uptime-kuma.yml $HOME/docker/uptime-kuma/docker-compose.yml
docker-compose -f $HOME/docker/uptime-kuma/docker-compose.yml up -d

echo "[Portainer]"
docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer    --restart=always    -v /var/run/docker.sock:/var/run/docker.sock    -v $HOME/docker/portainer/:/data  portainer/portainer-ce:latest

echo "[DNS]"
cp files/dns.yml $HOME/docker/dns/docker-compose.yml
docker-compose -f $HOME/docker/dns/docker-compose.yml up -d
sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved
docker start pihole

echo "[Flame]"
cp files/flame.yml $HOME/docker/flame/docker-compose.yml
docker-compose -f $HOME/docker/flame/docker-compose.yml up -d

