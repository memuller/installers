#!/bin/bash

flatpak remote-add --from org.mozilla.FirefoxRepo https://firefox-flatpak.mojefedora.cz/org.mozilla.FirefoxRepo.flatpakrepo

flatpak install -y org.mozilla.FirefoxRepo org.mozilla.FirefoxDevEdition
