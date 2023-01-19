#!/bin/bash

URL=${1:-http://127.0.0.1:38000}


echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-c3.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-c3.json" $URL/upi/v1/upf
