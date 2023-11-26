#!/bin/bash

user_path=$1

mkdir -p "$user_path/mealie/"
cp files/mealie.yml "$user_path/mealie/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/mealie/docker-compose.yml"

docker-compose -f "$user_path/mealie/docker-compose.yml" up -d
