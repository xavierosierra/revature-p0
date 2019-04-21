#!/bin/bash
if [ -n $(which brew) ] && [ -n $(which git) ]; then
echo "You have a Development Enviorment!"
# git::initial commit

## docker
mkdir .docker

touch \
  .docker/dockerfile \
  .docker/dockerup.yaml

## github
mkdir -p \
  .github/ISSUE_TEMPLATE \
  .github/PULL_REQUEST_TEMPLATE

touch \
  .github/ISSUE_TEMPLATE/issue-template.md \
  .github/PULL_REQUEST_TEMPLATE/pull-request-template.md

touch \
  .github/CODE-OF-CONDUCT.md \
  .github/CONTRIBUTING.md

## root
mkdir \
  client \
  src \
  test

touch \
  client/.gitkeep \
  src/.gitkeep \
  test/.gitkeep

touch \
  .azureup.yaml \
  .dockerignore \
  .editorconfig \
  .gitignore \
  .markdownlint.yaml \
  CHANGELOG.md \
  LICENSE.txt \
  README.md

else
    echo "You dont have a Development Enviorment! Please Install linux-setup.sh "
fi

exit 0