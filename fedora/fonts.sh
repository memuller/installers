#!/bin/bash

# Moves all .ttf and .otf fonts on Repos/fonts
# to the user fonts folder, then refreshes the font cache.

mkdir ~/.fonts
cd  ~/Repos/env/fonts
find . -name "*.ttf" -or -name "*.otf" | xargs cp -t ~/.fonts/

fc-cache -v
