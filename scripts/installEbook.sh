#!/bin/bash

user_path=$1
s
mkdir -p "$user_path/books/"
cp files/ebook.yml "$user_path/books/docker-compose.yml"

# Replace the placeholder with the actual path
sed -i "s|{{ user_path }}|$user_path|g" "$user_path/books/docker-compose.yml"

docker-compose -f "$user_path/books/docker-compose.yml" up -d
