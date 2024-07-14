#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git remote add origin git@github.com:AkshayS96/AkshayS96.github.io.git
git push -u origin main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:AkshayS96/my-website.git master:gh-pages