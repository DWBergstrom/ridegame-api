#!/bin/bash

curl "http://localhost:4741/finishes" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request GET \

echo
