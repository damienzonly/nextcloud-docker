docker-compose down
docker system prune -f
docker volume ls | grep nextcloud-docker | awk '{print $2}' | xargs docker volume rm