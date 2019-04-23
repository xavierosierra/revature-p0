#!/bin/bash
#automate the process of creating, assigning, deleting a directory user
#include: azure, must be admin, add role of reader or contributor to subscription, 
#remove role of reader or contributor to subscription, delete non-admin only, 1 script with 3 functions




##use this to login admin
# username=$1
az login -u $username 



createUser()
{
   #Variables to use for creating a function

   DOMAIN=xavierosierra.onmicrosoft.com
   PASSWORD=Kchall123
   userdisplayname=$1
   userprincipalname=$userdisplayname@$domain
   #subscription name for the user 
   usersubscription= $2
   #Verify the list to see if the actual user is in the query
   
   result=$(az ad user list --query [].userPrincipalName | grep -E /$userprincipalname) 
   
   
   #create the user
   az ad user create \
    --display-name $userdisplayname \
    --password $PASSWORD \
    --user-principal-name $userprincipalname \
    --force-change-password-next-login \
    --subscription $usersubscription  
   
     echo 'User is made!'

}

 assignRole()
 {   #the command to assing
      rolechange=$1
      username=$2
      userrole=$3
      if [ -z $rolechange ]; then 
         echo 'Change the users role' 
        exit 1

       elif [ -z $username ]; then 
         echo 'Change the user'
        exit 1

       elif [ -z $userrole ]; then 
         echo ''
        exit 1
        fi

      
     az role assignment $action \
      --assignee $username \
      --role $role
 }

 delete()
 { #delete
    az ad user delete --upn-or-object-id $userprincipalname
 }


