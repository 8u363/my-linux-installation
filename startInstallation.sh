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
copyWallpaper="copy Wallpaper"
selected=$(gum choose "$configPacman" "$installAURHelper" "$copyWallpaper" --selected="$configPacman","$installAURHelper","$copyWallpaper" --no-limit)

if [[ $selected = *"$configPacman"* ]]; then
    source scripts/configPacman.sh
fi

if [[ $selected = *"$installAURHelper"* ]]; then
    source scripts/installAURHelper.sh
fi
