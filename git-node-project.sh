#!/bin/bash

#include: verify req-1 is ready to make the git project repository structure  


#verifies the brew and git in order to actually run the rest of the process of creating the Git repositary directories and their files 
if ! [ -n $(which node) ] && [ -n $(which git) ]; then
  echo "You have a Development Enviorment!"
fi
# git::initial commit

## docker
mkdir git-project/.docker

touch \
 git-project/.docker/dockerfile \
 git-project/.docker/dockerup.yaml

## github
mkdir -p \
 git-project/.github/ISSUE_TEMPLATE \
 git-project/.github/PULL_REQUEST_TEMPLATE

touch \
 git-project/.github/ISSUE_TEMPLATE/issue-template.md \
 git-project/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

touch \
 git-project/.github/CODE-OF-CONDUCT.md \
 git-project/.github/CONTRIBUTING.md

## root
mkdir \
 git-project/ client \
 git-project/ src \
 git-project/test

touch \
 git-project/ client/.gitkeep \
 git-project/ src/.gitkeep \
 git-project/test/.gitkeep

touch \
  git-project/.azureup.yaml \
  git-project/.dockerignore \
  git-project/.editorconfig \
  git-project/.gitignore \
  git-project/.markdownlint.yaml \
  git-project/CHANGELOG.md \
  git-project/LICENSE.txt \
  git-project/README.md

##convert to git repository
  
##git config and git init

#enforce node as a project runtime with the node commands 
#manages dependencies 
git init 

npm init 

