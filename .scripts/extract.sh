#!/usr/bin/env bash

set -e
BASEDIR="$(dirname $(readlink -f $0))"

# Define variables for better maintainability
IMAGE_NAME="qgc-ubuntu-docker-release"

id=$(docker create "$IMAGE_NAME" "bash -lc sleep 9999s")
docker cp $id:/project/build $BASEDIR/../build
docker rm -v $id
