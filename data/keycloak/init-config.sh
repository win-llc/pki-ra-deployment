#!/bin/bash

KDADMDIRECTORY=/opt/jboss/keycloak/bin

#Default WIN RA Admin User
$KDADMDIRECTORY/kcadm.sh create users -r dev -s username=winra_admin -s enabled=true
$KDADMDIRECTORY/kcadm.sh set-password -r dev --username winra_admin --new-password password

#User for API Server Auth
$KDADMDIRECTORY/kcadm.sh create users -r dev -s username=win-ra-admin -s enabled=true
$KDADMDIRECTORY/kcadm.sh set-password -r dev --username win-ra-admin --new-password P@ssW0rd


