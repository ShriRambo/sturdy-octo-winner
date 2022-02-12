#!/bin/bash
emacs -Q --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "build.org")'
emacs -Q --script build.el
rm build.el
