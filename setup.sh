#!/bin/bash

echo "[Create Structure]"
mkdir $HOME/docker
mkdir $HOME/docker/proxy/
mkdir $HOME/docker/dns/
mkdir $HOME/docker/uptime-kuma/
mkdir $HOME/docker/portainer/
mkdir $HOME/docker/flame/
mkdir $HOME/docker/smokeping/
mkdir $HOME/docker/podgrab/

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

echo "PiVPN"
curl -L https://install.pivpn.io > install.sh
chmod +x install.sh
./install.sh --unattended files/options.conf

pivpn -a -n bl-iphone11
pivpn -a -n bl-mac
pivpn -a -n bl-dt
pivpn -a -n bl-ipad
pivpn -a -n bl-pixel
pivpn -a -n bl-a300
pivpn -a -n bl-pi4
pivpn -a -n bl-nas
pivpn -a -n bl-note9
pivpn -a -n home

echo "Smokeping"

cp files/smokeping.yml $HOME/docker/smokeping/docker-compose.yml
docker-compose -f $HOME/docker/smokeping/docker-compose.yml up -d


echo "Podgrab"
cp files/podgrab.yml $HOME/docker/podgrab/docker-compose.yml
docker-compose -f $HOME/docker/podgrab/docker-compose.yml up -d