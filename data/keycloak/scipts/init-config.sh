#!/bin/bash

KDADMDIRECTORY=/opt/jboss/keycloak/bin

$KDADMDIRECTORY/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user admin --password password

#Default WIN RA Admin User
$KDADMDIRECTORY/kcadm.sh create users -r dev -s username=winra_admin -s enabled=true
$KDADMDIRECTORY/kcadm.sh set-password -r dev --username winra_admin --new-password password

#User for API Server Auth
$KDADMDIRECTORY/kcadm.sh create users -r dev -s username=win-ra-admin -s enabled=true
$KDADMDIRECTORY/kcadm.sh set-password -r dev --username win-ra-admin --new-password P@ssW0rd

$KDADMDIRECTORY/kcadm.sh add-roles -r dev --uusername win-ra-admin --cclientid realm-management --rolename realm-admin

#$KDADMDIRECTORY/kcadm.sh create clients -r dev -s clientId=pki-ra-client-public -s enabled=true -s publicClient=true -s secret=9bbacdcc-6bbc-4c23-8a7a-77864a23a586
