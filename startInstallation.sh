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
installSoftware="install software"
installServices="install services"
copyWallpaper="copy Wallpaper"
selected=$(gum choose "$configPacman" "$installAURHelper" "$installSoftware" "$copyWallpaper" "$installServices" --selected="$configPacman","$installAURHelper","$installSoftware","$installServices" --no-limit)

if [[ $selected = *"$configPacman"* ]]; then
    source scripts/configPacman.sh
fi

if [[ $selected = *"$installAURHelper"* ]]; then
    source scripts/installAURHelper.sh
fi

if [[ $selected = *"$installSoftware"* ]]; then
    source scripts/installSoftware.sh
fi

if [[ $selected = *"$installServices"* ]]; then
    source scripts/installServices.sh
fi

if [[ $selected = *"$copyWallpaper"* ]]; then
    source scripts/copyWallpaperRepository.sh
fi
