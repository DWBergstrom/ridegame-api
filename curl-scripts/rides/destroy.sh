#!/bin/bash

curl "https://ridegame-api.herokuapp.com/rides/${ID}" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request DELETE \

echo
