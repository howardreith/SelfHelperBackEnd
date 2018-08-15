#!/bin/bash

curl "http://localhost:4741/colum_methods" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "colum_method": {
      "event": "'"${event}"'",
      "emotion": "'"${emotion}"'",
      "autothought": "'"${autothought}"'",
      "distortion": "'"${distortion}"'",
      "response": "'"${response}"'"
    }
  }'

echo
