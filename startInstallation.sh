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

installAURHelper="install AUR helper"
selected=$(gum choose "$installAURHelper" --selected="$installAURHelper" --no-limit)

if [[ $selected = *"$installAURHelper"* ]]; then
    source scripts/installAURHelper.sh
fi
