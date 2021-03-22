#!/bin/bash
sudo apt update ; sudo apt install -y wget gdebi-core
wget -O ~/Downloads/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/Downloads/discord.deb

