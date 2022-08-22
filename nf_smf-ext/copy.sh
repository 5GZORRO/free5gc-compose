#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cp ~/free5gc-compose/base/free5gc/NFs/smf/api/Dockerfile $SCRIPT_DIR
cp ~/free5gc-compose/base/free5gc/NFs/smf/api/server.py $SCRIPT_DIR
