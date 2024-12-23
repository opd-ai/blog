#! /usr/bin/env sh

echo "# Adventure Forge blog"
echo ""
echo "About AI-assisted tabletop roleplay"
echo ""
files=$(find ./*/ -name '*.md' | sort)
for file in $files; do
    htmlFile=$(echo $file | sed 's|.html|md|g')
    echo "$htmlFile"
    pandoc "$file" > "$htmlFile"
    echo "[$file]($file)"
done