#!/bin/bash

docker pull networkstatic/iperf3
docker run  -it -d --name=iperf3-server -p 5201:5201 networkstatic/iperf3 -s