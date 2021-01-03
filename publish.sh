#!/bin/sh

set -e # If a command fails then the deploy stops

echo "\033[0;32m Deplyoing to GitHub \033[0m\n"

if [ "`git status -s`" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi


hugo
mv public ..

git checkout web
rm -rf  *

mv ../public/* .

git add .
git commit -am "Automatic commit from script"
git push

git checkout main

