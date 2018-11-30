#!/bin/bash

curl --include --request POST 'http://localhost:4741/rides' \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "ride": {
      "name": "'"${NAME}"'",
      "distance": "'"${DIST}"'",
      "photo_url": "'"${P_URL}"'",
      "description": "'"${DESC}"'",
      "points": "'"${POINTS}"'"
    }
  }'

echo
