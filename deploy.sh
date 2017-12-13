#!/bin/bash

function get_branch(){
	echo `git branch --contains=HEAD | sed 's/* //'`
}

function gen_msg(){
	echo "deploy at `date`"
}

branch=`get_branch`
git checkout gh-pages
git merge $branch
nim js -o:main.js -d:release main
#git diff
git add -f *.js
git commit -m "`gen_msg`"
git push origin gh-pages
git checkout $branch
