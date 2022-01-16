#!/bin/bash

mkdir $HOME/docker/wiki
mkdir $HOME/dev/
mkdir $HOME/dev/wiki
cp files/wiki.yml $HOME/docker/wiki/docker-compose.yml
docker-compose -f $HOME/docker/wiki/docker-compose.yml up -d

git clone git@github.com:blurer/wiki.git $HOME/dev/wiki/
rm -rf $HOME/docker/wiki/www/*
cp -rf $HOME/dev/wiki/site/* $HOME/docker/wiki/www/
