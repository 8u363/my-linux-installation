#!/bin/bash

clear

# -----------------------------------------------------
source library/commons.sh
# -----------------------------------------------------

# -----------------------------------------------------
printInfo "update"
sudo pacman -Syu

printInfo "install required packages"
installPackagesWithPackman "figlet" "gum"
# -----------------------------------------------------

# -----------------------------------------------------
printBanner "My Linux Installation"

source scripts/installAURHelper.sh
