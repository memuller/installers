#!/bin/bash
sudo add-apt-repository ppa:rael-gc/ubuntu-xboxdrv
sudo apt-get update
sudo apt-get install -y ubuntu-xboxdrv
sudo service enable xboxdrv
sudo service xboxdrv restart
