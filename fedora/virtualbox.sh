#!/bin/bash

sudo dnf config-manager --add-repo http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

sudo dnf install -y dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms qt5-qtx11extras libxkbcommon elfutils-libelf-devel kernel-devel

sudo dnf install -y VirtualBox-6.0

sudo usermod -a G vboxusers memuller
