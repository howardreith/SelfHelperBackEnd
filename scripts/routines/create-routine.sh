#!/bin/bash

curl "http://localhost:4741/routines" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "routine": {
      "name": "'"${name}"'",
      "include": "'"true"'",
      "exercise1": "'"${exercise1}"'",
      "reps1": "'"${reps1}"'",
      "sets1": "'"${sets1}"'",
      "exercise2": "'"${exercise2}"'",
      "reps2": "'"${reps2}"'",
      "sets2": "'"${sets2}"'",
      "exercise3": "'"${exercise3}"'",
      "reps3": "'"${reps3}"'",
      "sets3": "'"${sets3}"'",
      "exercise4": "'"${exercise4}"'",
      "reps4": "'"${reps4}"'",
      "sets4": "'"${sets4}"'",
      "exercise5": "'"${exercise5}"'",
      "reps5": "'"${reps5}"'",
      "sets5": "'"${sets5}"'",
      "exercise6": "'"${exercise6}"'",
      "reps6": "'"${reps6}"'",
      "sets6": "'"${sets6}"'",
      "exercise7": "'"${exercise7}"'",
      "reps7": "'"${reps7}"'",
      "sets7": "'"${sets7}"'",
      "exercise8": "'"${exercise8}"'",
      "reps8": "'"${reps8}"'",
      "sets8": "'"${sets8}"'",
      "exercise9": "'"${exercise9}"'",
      "reps9": "'"${reps9}"'",
      "sets9": "'"${sets9}"'",
      "exercise10": "'"${exercise10}"'",
      "reps10": "'"${reps10}"'",
      "sets10": "'"${sets10}"'"
    }
  }'

echo
