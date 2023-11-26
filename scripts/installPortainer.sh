#!/bin/bash


user_path=$1

mkdir -p "$user_path/portainer/"
cp files/portainer.yml "$user_path/portainer/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/portainer/docker-compose.yml"

docker-compose -f "$user_path/portainer/docker-compose.yml" up -d
