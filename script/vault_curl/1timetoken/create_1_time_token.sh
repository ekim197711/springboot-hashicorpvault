cd $(dirname $0)
curl http://localhost:8200/v1/auth/token/create \
-X POST \
--header "X-Vault-Token: myroot" \
-d "@token_payload.json"

