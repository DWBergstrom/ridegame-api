#!/bin/bash

curl "https://ridegame-api.herokuapp.com/finishes" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request GET \

echo
