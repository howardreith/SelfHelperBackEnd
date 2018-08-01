#!/bin/bash

curl "http://localhost:4741/journal_entries" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "journal_entry": {
      "title": "'"${title}"'",
      "content": "'"${content}"'",
      "starred": "'"${starred}"'"
    }
  }'

echo
