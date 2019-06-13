#!/usr/bin/env bash
containername=mongo
imagename=mongo
tag=4.1
docker rm -f "$containername"
docker run \
-e MONGO_INITDB_ROOT_USERNAME=bondjamesbond \
-e MONGO_INITDB_ROOT_PASSWORD=007isthepassword \
-e MONGO_INITDB_DATABASE=vaultdemo \
-d -p 28017:27017 --name "$containername" \
"$imagename:$tag"

sleep 5
docker logs "$containername"
docker ps
