#!/bin/bash

user_path=$1

mkdir -p "$user_path/smokeping/"
cp files/smokeping.yml "$user_path/smokeping/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/smokeping/docker-compose.yml"

docker-compose -f "$user_path/smokeping/docker-compose.yml" up -d
