#!/bin/sh

docker pull vaultwarden/server:latest
docker run -d --name vaultwarden -v /mnt/data/vaultwarden/:/data/ -p 7010:80 vaultwarden/server:latest