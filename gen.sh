#! /usr/bin/env sh

echo "# Adventure Forge blog"
echo ""
echo "About AI-assisted tabletop roleplay"
echo ""
files=$(find ./*/ -name '*.md' | sort)
for file in $files; do
    echo "[$file]($file)"
done