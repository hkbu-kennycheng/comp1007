#!/bin/sh

CDN_PREFIX="https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.6.0"

for d in labslide*; do
  if [ -f $d/$d.ipynb ]; then
    jupyter nbconvert $d/$d.ipynb --to slides --reveal-prefix "$CDN_PREFIX"
  fi
done
