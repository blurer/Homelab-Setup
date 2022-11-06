#!/bin/bash

mkdir /mnt/docker/wiki
mkdir $HOME/dev/
mkdir $HOME/dev/wiki
cp files/wiki.yml /mnt/docker/wiki/docker-compose.yml
docker-compose -f /mnt/docker/wiki/docker-compose.yml up -d

git clone git@github.com:blurer/wiki.git $HOME/dev/wiki/
rm -rf /mnt/docker/wiki/www/*
cp -rf $HOME/dev/wiki/site/* /mnt/docker/wiki/www/
