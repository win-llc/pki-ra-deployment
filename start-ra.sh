#!/bin/bash

if [ -x "$(command -v docker)" ]; then
    FILES="./images/*"
    for f in $FILES
    do
      echo "Importing Docker Image $f ..."
      # take action on each file. $f store current file name
      docker import $f
    done

    docker-compose -f docker-compose.yaml up -d

    docker exec win-ra-keycloak /scripts/init-config.sh

else
    echo "Install docker"
    # command
fi
