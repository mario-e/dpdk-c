#!/bin/bash

IMAGE=dpdk-c
TAG=latest
#REPO=172.26.1.131:5000
REPO=127.0.0.1:6666
#DH=mariodh


echo building container image..

docker build --network host  -t $IMAGE:$TAG .

  echo tagging and pushing to repo: $REPO
  docker tag $IMAGE:$TAG $REPO/$IMAGE:$TAG
  docker push $REPO/$IMAGE:$TAG

