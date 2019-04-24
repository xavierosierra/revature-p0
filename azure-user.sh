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
      username=$1
      action=$2
      roleToAssign=$3
      #Checks for user if it exists 
      if [ check for existence of current user]; then
      echo 'this user does not exist'
      exit 1
      fi
      
      
      if [ $roleToAssign != "reader" ] && [ $roleToAssign != "contributor" ]; then
      echo 'Role does not exist'
      exit 1
      #Checks is the action is valid 
      fi
      if [ $action!="create" ] && [ $action!="delete" ]; then
      echo 'Action not valid'
      exit 1
      fi
      # if [ $action == "create" ] && [ user has no role ]
      # create user

      # elif [ $action == "delete" ] && [ user has role ]
      # delete user

      # fi
      
      
      #here would be the commands that you use to assign a role to the user
      az role assignment $action \
      --assignee $username \
      --role $role 
      
 }

 delete()
 { 
   #check if the user exist in the list 
    result=$(az ad user list --query [].userPrincipalName | grep -E $username)
   	echo 'Check which user to delete'
   
    az ad user delete \
    --upn-or-object-id $userprincipalname
 }


