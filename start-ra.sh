#!/bin/bash

if [ -x "$(command -v docker)" ]; then
    docker-compose -f docker-compose.yaml up -d

    docker exec win-ra-keycloak /scripts/init-config.sh

else
    echo "Install docker"
    # command
fi
