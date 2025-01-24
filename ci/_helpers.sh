#! /bin/bash

get_docker_cmd() {
    local ROOTDIR=$(dirname $(dirname $(dirname $(realpath $0))))
    local DOCKER_CMD="$ROOTDIR/ci/run_in_docker.sh"
    if [ "$1" == "--local" ]; then
        DOCKER_CMD=""
        shift
    fi
    echo $DOCKER_CMD
}
