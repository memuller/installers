#!/bin/bash

sudo aptitude update
sudo aptitude install -y zsh git-core zsh-syntax-highlighting

curl -L http://install.ohmyz.sh | sh
chsh -s `which zsh`
