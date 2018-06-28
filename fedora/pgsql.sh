#!/bin/bash
sudo dnf install -y postgresql-server postgresql-contrib
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl enable postgresql
