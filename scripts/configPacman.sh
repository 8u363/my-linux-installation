#!/bin/bash

printScriptHeader "pacman"
# -----------------------------------------------------

printInfo "copy pacman configuration"
sudo cp scripts/pacman.conf /etc/pacman.conf
