#!/bin/bash

curl "http://localhost:4741/journal_entries/${id}" \
  --include \
  --request PATCH \
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
