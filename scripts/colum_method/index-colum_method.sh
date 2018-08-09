#!/bin/bash

curl "http://localhost:4741/colum_methods" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
