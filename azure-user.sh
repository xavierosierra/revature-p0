#!/bin/bash

username=$1
passcode=$2
userdisplayname=$3
userprincipalname=$userdisplayname@$domain
DOMAIN=xavierosierra.onmicrosoft.com
random=${time}
usersubscription= $4
##step1 create user
az login -u $username

az ad user create \
 --display-name $userdisplayname \
 --user-principal-name $DOMAIN \
 --force-change-password-next-login  -$
##Step 2- create the user only if not exits


result=$(az ad user list --query [].principalName | grep -E /$userprincipalname/)

if[ -n result ]; then
     echo Hey that\'s a large number.
    # create user
fi

exit 0 
