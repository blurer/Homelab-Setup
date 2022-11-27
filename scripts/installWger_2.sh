#!/bin/bash
cd /home/bl/docker/wger/
docker-compose exec web python3 manage.py sync-exercises
docker-compose exec web python3 manage.py download-exercise-images
docker-compose exec web wger load-online-fixtures