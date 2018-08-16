#!/bin/bash

curl "http://localhost:4741/exposures" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
