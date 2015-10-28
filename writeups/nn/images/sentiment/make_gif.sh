#!/bin/bash
for file in *.pdf; do
  convert -density 300 $file -resize 1024x720 ${file:0:2}.jpg
done
convert -delay 100 -loop 0 *.jpg fp.gif
