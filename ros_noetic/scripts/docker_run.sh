#!/bin/bash -eu

PROJECT_DIR=$(dirname $(cd $(dirname $BASH_SOURCE); pwd))
source "$PROJECT_DIR/scripts/common.sh"

docker run -it --rm --net=host -v $PROJECT_DIR/src:$WORKDIR/src -v $PROJECT_DIR/input:$WORKDIR/input -v $PROJECT_DIR/output:$WORKDIR/output $DOCKER_IMAGE
#docker run -it --rm --net=host $DOCKER_IMAGE bash
