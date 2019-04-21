#!/bin/bash
if [ -n $(which brew) ] && [ -n $(which git) ]; then
echo "You have a Development Enviorment!"
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

else
    echo "You dont have a Development Enviorment! Please Install linux-setup.sh "
fi

exit 0