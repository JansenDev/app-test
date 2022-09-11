#!/usr/bin/env sh

# abort on errors
# set -e

# clean old dist if exists

# build
npm run predeploy

# navigate into temp directory
mkdir .temp
cd .temp

# Get old git commits
git init
git remote add origin https://github.com/JansenDev/app-test.git
git pull origin gh-pages

# update new changes
#unalias cp
cp -fr ../dist/* .

# upload changes
git add -A
git commit -m 'deploy #3'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/JansenDev/app-test.git main:gh-pages

cd ../
rm -drf .temp
# rm -drf dist

#cd -
