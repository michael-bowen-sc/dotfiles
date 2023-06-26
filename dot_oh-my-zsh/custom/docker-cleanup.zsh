#!/usr/local/bin/bash

# Removes images without a name and all containers created from them
rmi_docker_temp() {
  TEMP_IMAGES="$(docker images -q -f dangling=true)"
  for IMAGE_ID in $TEMP_IMAGES; do
    TEMP_CONTAINERS="$(docker ps -a -q -f ancestor=$IMAGE_ID)"
    if [ -n "$TEMP_CONTAINERS" ]; then
      docker rm $TEMP_CONTAINERS
    fi
    docker rmi -f $IMAGE_ID
  done
}