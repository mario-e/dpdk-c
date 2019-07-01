#!/bin/bash

set -x

cd payload

DASH="-----------------------------"

mkdir -p /host/var/log/contrail
exec &> >(ts '[%Y-%m-%d %H:%M:%S]' | tee -a /host/var/log/mario_test.log)

echo STARTING SKELETON CONTAINER $DASH $DASH

# do stuff

echo listing files
ls

echo END

tail -f /dev/null # keen container running
