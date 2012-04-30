#!/bin/bash

find *.html |
while read FILE; do
    cat $FILE | awk ' /<div id=\"lyrics-body\">/ {flag=1;next} /<\/div>/{flag=0} flag { print }' | html2text | cut -d "]" -f 2 | cat > $FILE.txt
done
