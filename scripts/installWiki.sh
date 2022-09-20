#!/bin/bash

mkdir /mnt/data/wiki
mkdir $HOME/dev/
mkdir $HOME/dev/wiki
cp files/wiki.yml /mnt/data/wiki/docker-compose.yml
docker-compose -f /mnt/data/wiki/docker-compose.yml up -d

git clone git@github.com:blurer/wiki.git $HOME/dev/wiki/
rm -rf /mnt/data/wiki/www/*
cp -rf $HOME/dev/wiki/site/* /mnt/data/wiki/www/
