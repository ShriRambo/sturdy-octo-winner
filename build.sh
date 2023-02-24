#!/bin/bash
echo Copying all the resources
rm -r ./public/* || mkdir ./public
cp -r ./resources/css ./public/
cp -r ./resources/js  ./public/
cp -r ./content/img ./public/

echo Fetching external pages
bash fetch-external.sh

echo Building web pages
emacs -Q --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "build.org")'
emacs -Q --script build.el

echo Cleaning up
rm build.el
bash clean-external.sh
