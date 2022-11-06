#!/bin/bash

mkdir /mnt/docker/startpage
mkdir $HOME/dev/
mkdir $HOME/dev/startpage
cp files/startpage.yml /mnt/docker/startpage/docker-compose.yml
docker-compose -f /mnt/docker/startpage/docker-compose.yml up -d

git clone git@github.com:blurer/root-startpage.git $HOME/dev/startpage/
rm -rf /mnt/docker/startpage/www/*
cp -rf $HOME/dev/startpage/* /mnt/docker/startpage/www/
