#!/bin/bash

wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
rm Release.key

sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'

sudo aptitude update
sudo apt-get install -y --install-recommends winehq-stable winetricks


winetricks settings fontsmooth=rgb