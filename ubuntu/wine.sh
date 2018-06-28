#!/bin/bash

wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
rm Release.key

sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ -y

sudo aptitude update
sudo aptitude install -y wine-stable
