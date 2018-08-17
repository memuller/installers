#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
sudo usermod -aG rvm memuller

sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev