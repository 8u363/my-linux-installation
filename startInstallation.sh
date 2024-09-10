#!/bin/bash

clear

# -----------------------------------------------------
source library/commons.sh
# -----------------------------------------------------

printInfo "update"
sudo pacman -Syu

printInfo "install required packages"
installPackagesWithPackman "figlet" " gum"

