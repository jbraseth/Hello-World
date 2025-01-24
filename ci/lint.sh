#! /bin/bash
source _helpers.sh

DOCKER_CMD=$(get_docker_cmd $1)
shift

$DOCKER_CMD "pylint src/** tests/**"
