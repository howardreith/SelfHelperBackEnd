#!/bin/bash

curl "http://localhost:4741/downward_arrows/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "downward_arrow": {
      "autothought": "'"${autothought}"'",
      "distortion": "'"${distortion}"'",
      "response": "'"${response}"'"
    }
  }'

echo
