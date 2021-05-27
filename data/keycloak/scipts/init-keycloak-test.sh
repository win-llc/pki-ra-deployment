#!/bin/bash

KDADMDIRECTORY=/opt/jboss/keycloak/bin

$KDADMDIRECTORY/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user admin --password password

#Default WIN RA Admin User
$KDADMDIRECTORY/kcadm.sh create users -r dev -s username=test2 -s enabled=true
$KDADMDIRECTORY/kcadm.sh set-password -r dev --username test2 --new-password password
