#!/usr/bin/env bash
cd $(dirname $0)
source variables.sh

echo "Create engine and keyvalue secrets"
docker exec "$container_name" vault login myroot
docker exec "$container_name" vault secrets enable -version=2 -path="$enginename" kv
docker exec "$container_name" vault kv put "$enginename/$hvpath/$profileProduction" \
topsecret.user="chuck_norris" \
topsecret.password="mia" \
topsecret.car="Hummer"

docker exec "$container_name" vault kv put "$enginename/$hvpath/$profile" \
topsecret.user="bond_james_bond" \
topsecret.password="007" \
topsecret.car="Aston Martin" \
spring.data.mongodb.database="vaultdemo" \
spring.data.mongodb.host="0.0.0.0" \
spring.data.mongodb.port="28017" \
spring.data.mongodb.username="bondjamesbond" \
spring.data.mongodb.password="007isthepassword" \
spring.data.mongodb.authentication-database="admin"