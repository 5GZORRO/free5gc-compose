#!/bin/bash

URL=${1:-http://127.0.0.1:38080}

curl -X PUT \
  $URL/links \
  -H 'content-type: application/json' \
  -d '{"A": "gNB1", "B": "UPF-C1"}'

curl -X PUT \
  $URL/links \
  -H 'content-type: application/json' \
  -d '{"A": "gNB1", "B": "UPF-C2"}'

curl -X GET \
  $URL/links \
  -H 'content-type: application/json'