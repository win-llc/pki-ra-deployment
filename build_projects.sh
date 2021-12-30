#!/bin/bash

TOPDIR=$(pwd)

#git submodule update --init --recursive

echo "Building pki-ra-common"
cd $TOPDIR/pki-ra-common
./gradlew -x test build

echo "Building pki-ra-acme-server"
cd $TOPDIR/pki-ra-acme-server
./gradlew -x test build

echo "Building pki-ra-api-server"
cd $TOPDIR/pki-ra-api-server
./gradlew -x test build

#echo "Building pki-ra-est-server"
#cd $TOPDIR/pki-ra-est-server
#./mvnw install:install-file    -Dfile=$(pwd)/../pki-ra-common/build/libs/pki-ra-common-1.0-SNAPSHOT.jar    -DgroupId=com.winllc.acme.common    -DartifactId=pki-ra-common    -Dversion=1.0-SNAPSHOT    -Dpackaging=jar    -DgeneratePom=true
#./mvnw clean install
