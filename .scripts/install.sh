#!/usr/bin/env bash

set -e
BASEDIR="$(dirname $(readlink -f $0))"

# Define variables for better maintainability
IMAGE_NAME="qgc-ubuntu-docker"
SOURCE_DIR="$BASEDIR/../"
BUILD_DIR="$BASEDIR/../build"

docker run --rm \
  --cap-add SYS_ADMIN \
  --device /dev/fuse \
  --security-opt apparmor:unconfined \
  -v "${SOURCE_DIR}:/project/source" \
  -v "${BUILD_DIR}:/project/build" \
  "${IMAGE_NAME}" \
  cmake --install /project/build --config Release

echo "done"
