#!/bin/bash

# Install DisplayLink USB display driver for X.
# Patched for Fedora based on the official Ubuntu driver.
# Does NOT support Wayland.

sudo dnf install kernel-devel rpm-build dkms kernel-headers
sudo setenforce 0
git clone https://github.com/displaylink-rpm/displaylink-rpm.git
cd displaylink-rpm
make
sudo rpm -iv *.rpm x86_64/*.rpm

sudo systemctl status displaylink.service
