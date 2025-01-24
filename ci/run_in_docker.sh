#! /bin/bash
ROOTDIR=$(dirname $(dirname $(dirname $(realpath $0))))

IMAGE=${HELLO_WORLD_TEST_IMAGE:-hello_world}
COMMAND="docker run --rm -v $ROOTDIR:/workspace $IMAGE"
$COMMAND $1
