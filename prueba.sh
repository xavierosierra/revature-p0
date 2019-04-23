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
 admin=$(az role assignment list \
    --include-classic-administrators \
    --query "[?id=='NA(classic admins)'].principalName" | grep -E $adminUserName)

# checks to see if the user is an admin
if [ -z "$admin" ]; then 
    echo "you must be an admin to access this file"
    exit 1
fi

# where you call the functions create, assign and delete
command=$2
$command $3 $4 $5

exit 0