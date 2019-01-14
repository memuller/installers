#!/bin/bash

# Moves all .ttf and .otf fonts on Repos/fonts
# to the user fonts folder, then refreshes the font cache.

# creates ~/.fonts if not exists
[ ! -d "$HOME/.fonts" ] && mkdir ~/.fonts

# goes to source fonts folder
cd  ~/Repos/env/fonts

# removes all formats expect .ttf from FiraCode repo
rm -fr code/FiraCode/distr/eot
rm -fr code/FiraCode/distr/otf
rm -fr code/FiraCode/distr/woff
rm -fr code/FiraCode/distr/woff2

# copies all ttf and otf files to ~/.fonts
find . -name "*.ttf" -or -name "*.otf" | xargs cp -t ~/.fonts/

# if fc-cache exists, reloads it
which fc-cache >/dev/null 2>&1 && fc-cache -v
