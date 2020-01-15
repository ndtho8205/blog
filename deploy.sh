#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

rm -rf public/*

# build the project
hugo --minify --gc

# commit changes, push source and build repos
cd public || exit

git add .
msg="Rebuilding site $(date)"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"
git checkout master
git push origin HEAD:master

cd ..
