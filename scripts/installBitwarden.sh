#!/bin/sh

docker pull vaultwarden/server:latest
docker run -d --name vaultwarden -v /home/bl/docker/vaultwarden/:/data/ -p 7010:80 vaultwarden/server:latest