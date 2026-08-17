#!/usr/bin/env bash

set -e
BASEDIR="$(dirname $(readlink -f $0))"

# Define variables for better maintainability
DOCKERFILE_PATH="$BASEDIR/../deploy/docker/Dockerfile-build-ubuntu"
IMAGE_NAME="qgc-ubuntu-docker"
SOURCE_DIR="$BASEDIR/../"

# Build the Docker image
docker build --file "${DOCKERFILE_PATH}" -t "${IMAGE_NAME}" "${SOURCE_DIR}"
