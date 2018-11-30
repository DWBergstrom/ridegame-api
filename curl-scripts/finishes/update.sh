#!/bin/bash

curl --include --request PATCH "http://localhost:4741/finishes/${ID}" \
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
