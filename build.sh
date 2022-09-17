#!/bin/bash
echo Copying all the resources
rm -r ./public/* || mkdir ./public
cp -r ./resources/css ./public/
cp -r ./resources/js  ./public/
cp -r ./content/img ./public/

echo Building web pages
emacs -Q --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "build.org")'
emacs -Q --script build.el
rm build.el
