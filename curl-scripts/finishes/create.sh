#!/bin/bash

curl --include --request POST 'http://localhost:4741/finishes' \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "finish": {
      "user_id": "'"${U_ID}"'",
      "ride_id": "'"${R_ID}"'",
      "notes": "'"${NOTES}"'",
      "date": "'"${DATE}"'",
      "duration": "'"${DURATION}"'"
    }
  }'

echo
