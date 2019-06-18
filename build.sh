#!/usr/bin/env bash

set -euo pipefail
set -x

VERSION=$1
PROJECT="burrow"
DOCKER_PROJECT="hull/$PROJECT"
docker build -t $DOCKER_PROJECT:$VERSION .
docker push $DOCKER_PROJECT:$VERSION
