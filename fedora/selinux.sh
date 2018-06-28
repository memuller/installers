#!/bin/sh

# http stuff
sudo setsebool -P httpd_enable_homedirs 1
sudo setsebool -P httpd_can_network_connect 1
sudo setsebool -P httpd_use_fusefs 1
