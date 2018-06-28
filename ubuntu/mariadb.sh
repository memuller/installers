#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386] http://mirror.ufscar.br/mariadb/repo/10.0/ubuntu yakkety main'

sudo apt update
sudo apt install mariadb-server
