#!/bin/bash

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install -y nodejs yarn

sudo chown -R memuller.memuller /usr/lib/node_modules

source ../node-packages.sh
