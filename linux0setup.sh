#!/bin/bash
#Requirement 1: automate the process of provisioning a new linux virtual machine
# Goes through each step of setting up the Development Enviorment(brew, azure-cli, git, node.js)

 apt update 
 apt upgrade -y
#Adds develoment libraries that you need and contains packages 
 apt install -y build-essential file curl git 
echo 'completed ubuntu section'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

echo 'completed brew part'
##gnu c compiler  it normally does preprocessing, compilation, assembly and linking. 
brew install gcc  
brew install git
brew install azure-cli
brew install node
sudo apt install -y npm

echo ''
echo "Your Linux enviorment is complete"


## automate the linux environment setup
