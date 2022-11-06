#!/bin/bash

sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'
sudo systemctl restart systemd-resolved

mkdir /mnt/docker/dns/
cp files/dns.yml /mnt/docker/dns/docker-compose.yml
docker-compose -f /mnt/docker/dns/docker-compose.yml up -d
