#!/bin/bash

curl "http://localhost:4741/generics" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
