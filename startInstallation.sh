#!/bin/bash

clear

# -----------------------------------------------------
source library/commons.sh
# -----------------------------------------------------

# -----------------------------------------------------
printInfo "update packages"
sudo pacman -Syu

printInfo "install required packages"
installPackagesWithPackman "figlet" "gum"
# -----------------------------------------------------

# -----------------------------------------------------
printBanner "My Linux Arch Installation"
# -----------------------------------------------------

configPacman="config pacman"
installAURHelper="install AUR helper"
selected=$(gum choose "$configPacman" "$installAURHelper"  --selected="$configPacman","$installAURHelper" --no-limit)

if [[ $selected = *"$configPacman"* ]]; then
    source scripts/configPacman.sh
fi

if [[ $selected = *"$installAURHelper"* ]]; then
    source scripts/installAURHelper.sh
fi
