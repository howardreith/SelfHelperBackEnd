#!/bin/bash

curl "http://localhost:4741/downward_arrows" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
