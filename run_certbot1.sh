#!/bin/sh
docker volume create vol_letsencrypt
docker-compose build
docker-compose up -d
docker exec -it certbot1 sh /root/certbot_create.sh
docker-compose down
