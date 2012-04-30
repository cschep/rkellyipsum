#!/bin/bash

while read LINE; do
    curl -O http://www.metrolyrics.com$LINE
    sleep 1
done < song-links.txt

