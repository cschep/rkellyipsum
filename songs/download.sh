#!/bin/bash

while read LINE; do
    echo "curl -O --user-agent \"Mozilla/4.0 \(compatible; MSIE 5.01; Windows NT 5.0)\" http://www.azlyrics.com/$LINE"
    sleep 2
done < urls.txt

