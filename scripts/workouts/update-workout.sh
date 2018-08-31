#!/bin/bash

curl "http://localhost:4741/workouts/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "workout": {
      "name": "'"${name}"'",
      "exercise1": "'"${exercise1}"'",
      "exercise1reps1": "'"${exercise1reps1}"'"
    }
  }'

echo
