#!/bin/bash

# -----------------------------------------------------
printScriptHeader "config pacman"

printInfo "copy pacman config file"
sudo cp scripts/configPacman/pacman.conf /etc/pacman.conf
