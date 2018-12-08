#!/bin/bash

curl "https://ridegame-api.herokuapp.com/finishes/${ID}" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request DELETE \

echo
