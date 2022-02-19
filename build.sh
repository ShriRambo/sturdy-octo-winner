#!/bin/bash
echo Copying all the resources
cp -r ./resources/css/. ./public/css/
cp -r ./resources/js/.  ./public/js/

echo Building web pages
emacs -Q --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "build.org")'
emacs -Q --script build.el
rm build.el
