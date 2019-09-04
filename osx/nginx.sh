#!/bin/bash

brew install nginx

sudo mkdir -f /etc/nginx/certs
cd /etc/nginx/certs
sudo ln -s $HOME/Repos/env/certs/CERT.crt default.crt
sudo ln -s $HOME/Repos/env/certs/test.key default.key

mv /usr/local/etc/nginx /usr/local/etc/nginx.default
ln -s $HOME/Repos/nginx /usr/local/etc/nginx

