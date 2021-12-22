#!/bin/bash

if [ -z "$SERVER_FQDN" ]; then
  export SERVER_FQDN=$(hostname --fqdn)
fi

if [ -x "$(command -v docker)" ]; then
    FILES="./images/*"
    for f in $FILES
    do
      echo "Importing Docker Image $f ..."
      # take action on each file. $f store current file name
      docker import $f
    done

    docker-compose -f docker-compose.yaml pull

    docker-compose -f docker-compose.yaml up -d

    docker exec win-ra-keycloak /scripts/init-config.sh

    docker exec -it nginx nginx -s reload

    echo "Init ACME Default Directory"
    docker cp data/acme/default-directory.json mongodb:/tmp/default-directory.json
    docker exec mongodb mongoimport -d acme -c directoryDataSettings --jsonArray --username appuser --password password --file /tmp/default-directory.json

else
    echo "Install docker"
    # command
fi
