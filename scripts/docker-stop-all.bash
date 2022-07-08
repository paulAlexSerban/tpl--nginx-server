#!bin/bash
cd $(dirname $0) # makes sure the folder containing the script will be the root folder

echo " 🛑  STOP 🐳  all Docker containers"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.nginx.yml \
  down
