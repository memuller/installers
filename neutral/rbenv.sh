#!/bin/bash

if [ ! -d "$HOME/.rbenv" ] ; then 
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  cd ~/.rbenv && src/configure && make -C src

  ~/.rbenv/bin/rbenv init

  mkdir -p ~/.rbenv/plugins
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# if already installed, upgrades
else
  cd ~/.rbenv && git pull
  cd ~/.rbenv/plugins/node-build && git pull
fi
