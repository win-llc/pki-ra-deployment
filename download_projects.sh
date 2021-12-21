#!/bin/bash

TOPDIR=$(pwd)

git submodule add -f https://github.com/win-llc/pki-ra-common.git pki-ra-common
git submodule add -f https://github.com/win-llc/pki-ra-acme-server.git pki-ra-acme-server
git submodule add -f https://github.com/win-llc/pki-ra-est-server.git pki-ra-est-server
git submodule add -f https://github.com/win-llc/pki-ra-api-server.git pki-ra-api-server

cd $TOPDIR/pki-ra-common
./gradlew -x test build
cd $TOPDIR/pki-ra-acme-server
./gradlew -x test build
cd $TOPDIR/pki-ra-api-server
./gradlew -x test build
