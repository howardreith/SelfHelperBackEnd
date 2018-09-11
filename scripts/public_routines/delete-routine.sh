#!/bin/bash

curl "http://localhost:4741/public_routines/${id}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
