#!/usr/bin/env bash

set -e

if ((BASH_VERSINFO[0] < 4))
then
    echo "Sorry, you need at least bash-4.0 to run this script."
    echo "On mac try: brew install bash"
    exit 1
fi

source <(curl -s https://raw.githubusercontent.com/microdc/bash-libs/0.0.1/common.sh)


main() {
  check_dependency docker
  check_dependency jq

  export OWNER='nchauhan-ee'
  export REPO='helloworld-service'
  export DOCKER_REPO=${1:-"${OWNER}/${REPO}"}

  log "Building ${DOCKER_REPO} dependencies image."
  docker build --no-cache --rm -f Dockerfile -t ${DOCKER_REPO}:dependencies .
}

main "$@"