#!/bin/bash

#
# git push brjppru.github.io repo to githublo
#

dated=$(date +%Y-%m-%d-%H%M%S)
#commt=$(curl -L --proxy http://192.168.0.11:3129 -s http://whatthecommit.com/index.txt)
commt=$(curl -L -s http://whatthecommit.com/index.txt)

git add .

echo run git push on ${dated} ${commt}

for i in `git status | grep deleted | awk '{print $2}'`; do git rm $i; done

git commit -m "$dated $commt"

git push

#
# non master, just a main. fck2020 (c) scooter
#
