#!/bin/bash

set -e

REPO="dkrizhanovskyi/my-portfolio"
BRANCH="gh-pages"

echo "Building the project..."
bundle exec jekyll build

cd _site

git init
git remote add origin https://github.com/$REPO.git

git add .
git commit -m "Deploy to GitHub Pages"
git push -f origin master:$BRANCH

cd ..
echo "Deployment to GitHub Pages complete."
