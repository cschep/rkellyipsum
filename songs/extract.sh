#!/bin/bash

find . *.html |
while read LINE; do
    cat $LINE | awk ' /<!-- start of lyrics -->/ {flag=1;next} /<!-- end of lyrics -->/{flag=0} flag { print }' > $LINE.txt
done

