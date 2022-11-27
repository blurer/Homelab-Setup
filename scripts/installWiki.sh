#!/bin/bash

mkdir /home/bl/docker/wiki
mkdir $HOME/dev/
mkdir $HOME/dev/wiki
cp files/wiki.yml /home/bl/docker/wiki/docker-compose.yml
docker-compose -f /home/bl/docker/wiki/docker-compose.yml up -d

git clone git@github.com:blurer/wiki.git $HOME/dev/wiki/
rm -rf /home/bl/docker/wiki/www/*
cp -rf $HOME/dev/wiki/site/* /home/bl/docker/wiki/www/
