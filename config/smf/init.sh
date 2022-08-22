#!/bin/bash

URL=${1:-http://127.0.0.1:38000}

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-r1.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-r1.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-t1.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-t1.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-t2.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-t2.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-c1.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-c1.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-c2.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-c2.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-c3.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-c3.json" $URL/upi/v1/upf

echo ""
echo ""
echo "-=-=-=-=-=-= TRACE -=-=-=-=-=-=-=-=-=-"
echo "Register upf-c4.."
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-"
curl -H "Content-type: application/json" -X POST -d "@upf-c4.json" $URL/upi/v1/upf
