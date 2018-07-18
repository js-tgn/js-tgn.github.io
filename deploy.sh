#!/usr/bin/env sh

# abort on errors
set -e

# build
vuepress build

# navigate into the build output directory
cd .vuepress/dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# GitHub Pages serve organization page only from master branch
git push -f git@github.com:js-tgn/js-tgn.github.io.git master

cd -