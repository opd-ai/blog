#! /usr/bin/env sh

./gen.sh > README.md
sed 's|.md|.html|g' README.md > INDEX.md
pandoc INDEX.md > index.html
rm -f INDEX.md
git add -v .
git commit -am "$(date)"
git push --all