#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ -z "$TAG" ]

  # Only build one image
  then
    docker build -t stephenneal/node-yarn:"${TAG}" "${DIR}"/"${TAG}"/

  # Build all images
  else
    docker build -t stephenneal/node-yarn:v1 "${DIR}"/v1/
    docker build -t stephenneal/node-yarn:v2 "${DIR}"/v2/
fi