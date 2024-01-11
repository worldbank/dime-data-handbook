#!/bin/bash

# Exit on errors
set -e

#Make sure to cd into the main repo before running this script

#Create _temp folder and cd into it
mkdir _temp
cd _temp

#Clone repo and cd into it and check out gh-pages branch
git clone https://github.com/worldbank/dime-data-handbook.git
cd dime-data-handbook
git checkout gh-pages

#Remove the contents in the docs branch and copy from the _book folder
rm -rf docs
cp -r ../../_book/. ./docs

#Commit and push the new edits
git add .
git commit -m "new version of book"
git push

#cd back to the main clone and delete the temporary clone
cd ..
cd ..
rm -rf _temp
