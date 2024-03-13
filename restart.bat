@echo on

docker-compose down -v
rm -rf ./volumes/

docker rmi dify-worker
docker rmi dify-api
docker rmi dify-web

docker-compose -f docker-compose-build.yml up -d

touch ./volumes/app/storage/.gitkeep
touch ./volumes/db/data/.gitkeep
touch ./volumes/redis/data/.gitkeep
touch ./volumes/weaviate/.gitkeep