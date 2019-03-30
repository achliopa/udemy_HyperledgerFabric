#!/bin/bash -eu
# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# This script pulls docker images from the Dockerhub hyperledger repositories

# set the default Docker namespace and tag
DOCKER_NS=hyperledger
ARCH=amd64
VERSION=1.3.0
BASE_DOCKER_TAG=amd64-0.4.13

# set of Hyperledger Fabric images
FABRIC_IMAGES=(fabric-peer fabric-orderer fabric-ccenv fabric-tools)

for image in ${FABRIC_IMAGES[@]}; do
  echo "Pulling ${DOCKER_NS}/$image:${ARCH}-${VERSION}"
  docker pull ${DOCKER_NS}/$image:${ARCH}-${VERSION}
done

THIRDPARTY_IMAGES=(fabric-kafka fabric-zookeeper fabric-couchdb fabric-baseos)

for image in ${THIRDPARTY_IMAGES[@]}; do
  echo "Pulling ${DOCKER_NS}/$image:${BASE_DOCKER_TAG}"
  docker pull ${DOCKER_NS}/$image:${BASE_DOCKER_TAG}
done
