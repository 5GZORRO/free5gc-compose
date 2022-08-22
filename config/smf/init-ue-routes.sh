#!/bin/bash

URL=${1:-http://127.0.0.1:38080}

curl -X POST \
  $URL/ue-routes/blue

curl -X POST \
  $URL/ue-routes/blue/members/imsi-208930000000001
curl -X POST \
  $URL/ue-routes/blue/members/imsi-208930000000002
curl -X POST \
  $URL/ue-routes/blue/members/imsi-208930000000003
curl -X POST \
  $URL/ue-routes/blue/members/imsi-208930000000004
curl -X POST \
  $URL/ue-routes/blue/members/imsi-208930000000005


curl -X PUT \
  $URL/ue-routes/blue/topology \
  -H 'content-type: application/json' \
  -d '{"A": "gNB1", "B": "UPF-C1"}'

curl -X GET \
  $URL/ue-routes/blue \
  -H 'content-type: application/json'