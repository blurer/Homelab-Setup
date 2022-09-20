#!/bin/bash

mkdir /mnt/data/startpage
mkdir $HOME/dev/
mkdir $HOME/dev/startpage
cp files/startpage.yml /mnt/data/startpage/docker-compose.yml
docker-compose -f /mnt/data/startpage/docker-compose.yml up -d

git clone git@github.com:blurer/root-startpage.git $HOME/dev/startpage/
rm -rf $HOME/docker/startpage/www/*
cp -rf $HOME/dev/startpage/* /mnt/data/startpage/www/
