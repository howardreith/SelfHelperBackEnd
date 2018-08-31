#!/bin/bash

curl "http://localhost:4741/routines" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
