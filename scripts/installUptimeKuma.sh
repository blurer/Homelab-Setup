#!/bin/bash

user_path=$1

mkdir -p "$user_path/uptime/"
cp files/uptime-kuma.yml "$user_path/uptime/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/uptime/docker-compose.yml"

docker-compose -f "$user_path/uptime/docker-compose.yml" up -d
