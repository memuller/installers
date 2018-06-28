#!/bin/bash
sudo dnf install -y mariadb mariadb-server mariadb-devel
sudo systemctl enable mariadb.service
