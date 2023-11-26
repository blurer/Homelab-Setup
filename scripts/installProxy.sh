#!/bin/bash

user_path=$1

mkdir -p "$user_path/proxy/"
cp files/proxy.yml "$user_path/proxy/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/proxy/docker-compose.yml"

docker-compose -f "$user_path/proxy/docker-compose.yml" up -d
