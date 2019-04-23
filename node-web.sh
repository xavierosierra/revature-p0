#!/bin/bash
#automate the process of starting, stopping a node web application
#include: node, 1 script with 2 functions
#name: node-web.sh


##automate 

#create start function for node 
startNode()
{   
    startscript=$(which package.json | grep -E "start")
    npm run-script prueba.sh
    npm start
       echo "NPM on"
}
 
 #Create stop function for node 
stopNode()
{
     stopscript=$(which package.json | grep -E "stop")
    npm stop
    echo "NPM stop"
}
case $command in
    "start")
        start $2
    ;;
    "stop")
        stop $2
    ;;
    *)
        echo "must use either start or stop as your command"
        exit 1
    ;;

esac

exit 0