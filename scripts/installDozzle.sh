#!/bin/bash

docker pull amir20/dozzle:latest
docker run --name dozzle -d --volume=/var/run/docker.sock:/var/run/docker.sock -p 5123:8080 amir20/dozzle:latest