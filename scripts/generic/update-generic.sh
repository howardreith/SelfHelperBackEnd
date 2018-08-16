#!/bin/bash

curl "http://localhost:4741/generics/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "generic": {
      "activity": "'"${activity}"'",
      "fear_level": "'"${fear_level}"'"
    }
  }'

echo
