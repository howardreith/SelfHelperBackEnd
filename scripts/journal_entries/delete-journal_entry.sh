#!/bin/bash

curl "http://localhost:4741/journal_entries/${id}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
