#!/usr/bin/env bash
cd $(dirname $0)
source variables.sh

echo "Stopping the vault if its already running"
docker stop "$container_name"
echo "Force remove the vault if its present"
docker rm -f "$container_name"

docker run --cap-add=IPC_LOCK \
-p 8200:8200 \
-d \
--name "$container_name" \
-e "VAULT_DEV_ROOT_TOKEN_ID=$token" \
-e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200' \
-e 'VAULT_ADDR=http://127.0.0.1:8200' \
vault

sleep 1
echo "Docker container should be up and running now - try http://0.0.0.0:8200"





