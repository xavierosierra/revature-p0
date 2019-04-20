#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential curl file git

##I need to put something that asks the user to no run in root.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

brew install gcc
brew install git
brew install azure-cli
sudo apt install -y nodejs
sudo apt install -y npm


exit 0

## automate the linux environment setup
