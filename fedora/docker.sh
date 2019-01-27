#!/bin/bash
sudo dnf remove -y docker docker-client docker-common docker-selinux docker-engine

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# sudo dnf config-manager --set-enabled docker-ce-edge

sudo dnf install docker-ce docker-compose podman

sudo systemctl enable docker
sudo systemctl start docker
