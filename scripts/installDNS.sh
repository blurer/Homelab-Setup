#!/bin/bash

sudo sed -r -i.orig 's/#?DNSStubListener=yes/DNSStubListener=no/g' /etc/systemd/resolved.conf
sudo sh -c 'rm /etc/resolv.conf && ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf'
sudo systemctl restart systemd-resolved

mkdir -p "$user_path/dns/"
cp files/dns.yml "$user_path/dns/docker-compose.yml
docker-compose -f $user_path/dns/docker-compose.yml up -d
