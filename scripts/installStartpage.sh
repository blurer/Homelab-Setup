#!/bin/bash

mkdir $HOME/docker/startpage
mkdir $HOME/dev/
mkdir $HOME/dev/startpage
cp files/startpage.yml $HOME/docker/startpage/docker-compose.yml
docker-compose -f $HOME/docker/startpage/docker-compose.yml up -d

git clone git@github.com:blurer/root-startpage.git $HOME/dev/startpage/
rm -rf $HOME/docker/startpage/www/*
cp -rf $HOME/dev/startpage/* $HOME/docker/startpage/www/
