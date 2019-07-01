#!/bin/bash

CONTAINER_NAME=dpdk_c
CONTAINER_IMAGE=127.0.0.1:6666/dpdk-c
TAG=latest

docker rm --force $CONTAINER_NAME

DEV="--rm --entrypoint=/bin/bash"
PROD="--restart on-failure --entrypoint=/payload/entrypoint.sh"

docker run $DEV \
	--network=host \
	-v /:/host \
	-v /var/run/docker.sock:/var/run/docker.sock \
	--privileged \
	--pid=host \
	--name $CONTAINER_NAME \
	-it $CONTAINER_IMAGE:$TAG

