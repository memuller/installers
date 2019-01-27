#!/bin/sh

sudo dnf install -y wine wine-devel wine-fonts winetricks

sudo dnf config-manager --add-repo http://rpm.playonlinux.com/playonlinux.repo

sudo dnf install -y playonlinux
