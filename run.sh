#! /usr/bin/env sh

./gen.sh > README.md
git add -v .
git commit -am "$(date)"
git push --all