#!/bin/bash

curl "http://localhost:4741/downward_arrows" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "downward_arrow": {
      "autothought1": "'"${autothought1}"'",
      "distortion1": "'"${distortion1}"'",
      "response1": "'"${response1}"'"
    }
  }'

echo
