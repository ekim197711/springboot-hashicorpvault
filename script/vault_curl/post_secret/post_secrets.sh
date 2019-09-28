#!/usr/bin/env bash
cd $(dirname $0)

curl --header "X-Vault-Token: s.c3oJGWDalHLKxc3MFuxoQCbQ" \
--request POST \
--data @secrets.json \
http://localhost:8200/v1/mikesapp/data/springbootbackend/production