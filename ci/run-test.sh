#! /bin/bash -e
# Set pipefail (strict mode) so that the script fails if any command fails
source _helpers.sh

DOCKER_CMD=$(get_docker_cmd $1)
shift

$DOCKER_CMD "pytest tests/ -m hello_world"
