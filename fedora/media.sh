#!/bin/sh

sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install -y gstreamer1-plugin-openh264 gstreamer1-libav gstreamer1-plugins-ugly mozilla-openh264 ffmpeg-libs lame sox compat-ffmpeg28
