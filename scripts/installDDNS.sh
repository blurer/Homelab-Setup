#!/bin/bash

user_path=$1

mkdir -p "$user_path/ddns/"
cp files/ddns.yml "$user_path/ddns/docker-compose.yml"
cp $HOME/ddns_config.json  "$user_path/ddns/config.json"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/ddns/docker-compose.yml"

docker-compose -f "$user_path/ddns/docker-compose.yml" up -d