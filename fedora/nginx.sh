#!/bin/bash

DOCSFOLDER=$HOME/Repos

sudo dnf install -y nginx

sudo systemctl enable nginx.service

# SELinux directive to allow http to access user content
sudo setsebool -P httpd_read_user_content 1

sudo mv /etc/nginx /etc/nginx.default
sudo ln -s $DOCSFOLDER/nginx /etc/nginx
