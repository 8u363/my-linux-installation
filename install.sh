#!/bin/bash

# -----------------------------------------------------
source commons/commons.sh
# -----------------------------------------------------

clear

# -----------------------------------------------------
printInfo "update packages"
sudo pacman -Syu

#printInfo "install required packages"
#installPackagesWithPackman "figlet" "gum"
# -----------------------------------------------------

# -----------------------------------------------------
#printBanner "My Linux Arch Installation"
# -----------------------------------------------------

#selected=$(gum choose "config pacman" "install software" "install services" "clone dotfiles" "clone wallpaper" "cleanup" --no-limit)

#if [[ $selected = *"config pacman"* ]]; then
#    source scripts/configPacman.sh
#fi

#if [[ $selected = *"install software"* ]]; then
#    source scripts/installSoftware.sh
#fi

#if [[ $selected = *"install services"* ]]; then
#    source scripts/installServices.sh
#fi

#if [[ $selected = *"clone dotfiles"* ]]; then
#    source scripts/cloneDotfilesRepository.sh
#fi

#if [[ $selected = *"clone wallpaper"* ]]; then
#    source scripts/cloneWallpaperRepository.sh
#fi

#if [[ $selected = *"cleanup"* ]]; then
#    source scripts/cleanup.sh
#fi
