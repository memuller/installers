#!/bin/bash

if [ ! -d "$HOME/.phpenv" ] ; then 
  git clone https://github.com/phpenv/phpenv.git ~/.phpenv
  cd ~/.phpenv && src/configure && make -C src

  ~/.phpenv/bin/phpenv init

  mkdir -p ~/.phpenv/plugins
  git clone https://github.com/php-build/php-build.git ~/.phpenv/plugins/php-build

# if already installed, upgrades
else
  cd ~/.phpenv && git pull
  cd ~/.phpenv/plugins/php-build && git pull
fi
