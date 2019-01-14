#!/bin/bash

if [ ! -d "$HOME/.nodenv" ] ; then 
  git clone https://github.com/nodenv/nodenv.git ~/.nodenv
  cd ~/.nodenv && src/configure && make -C src

  ~/.nodenv/bin/nodenv init

  mkdir -p ~/.nodenv/plugins
  git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

# if already installed, upgrades
else
  cd ~/.nodenv && git pull
  cd ~/.nodenv/plugins/node-build && git pull
fi
