#!/bin/bash

# Git commit ID
COMMIT_ID=$(git rev-parse --short HEAD)

# build Docker image
IMAGE_NAME="openim/openim-server:release-v3.7-$COMMIT_ID"
docker build -t $IMAGE_NAME .

echo "Docker image has been built $IMAGE_NAME"
