#!/bin/bash

curl "http://localhost:4741/exposures/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "exposure": {
      "action": "'"${action}"'",
      "prediction": "'"${prediction}"'",
      "actual": "'"${actual}"'",
      "satisfaction": "'"${satisfaction}"'"
    }
  }'

echo
