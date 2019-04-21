#!/bin/bash
#use this to login admin

username=$1
az login -u $username 

create()
{
userdisplayname=$1
userprincipalname=$userdisplayname@$domain
DOMAIN=xavierosierra.onmicrosoft.com
random=Kchall123
usersubscription= $2

result=$(az ad user list --query [].principalName | grep -E /$userprincipalname/)


   
 ##Step 2- create the user only if user does not exist

    if [ -z result ]; then
    az ad user create \
    --display-name $userdisplayname \
    --user-principal-name $DOMAIN \
    --force-change-password-next-login \
    --subscription $usersubscription  
   else 
   
    exit 1
   fi
}

assing()
{

}
##step1 create user

command=$2
$command $3 $4




