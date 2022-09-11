#!/bin/bash

PROJECT_DIR=$(dirname $(cd $(dirname $BASH_SOURCE); pwd))
source "$PROJECT_DIR/scripts/common.sh"

docker build $PROJECT_DIR -t $DOCKER_IMAGE
