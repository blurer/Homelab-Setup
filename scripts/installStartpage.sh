#!/bin/bash

mkdir /home/bl/docker/startpage
mkdir $HOME/dev/
mkdir $HOME/dev/startpage
cp files/startpage.yml /home/bl/docker/startpage/docker-compose.yml
docker-compose -f /home/bl/docker/startpage/docker-compose.yml up -d

git clone git@github.com:blurer/root-startpage.git $HOME/dev/startpage/
rm -rf /home/bl/docker/startpage/www/*
cp -rf $HOME/dev/startpage/* /home/bl/docker/startpage/www/
