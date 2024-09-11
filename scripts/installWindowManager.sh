#!/bin/bash

i3Packages=(
    "alacritty"                         # terminal emulator 
    "autotiling"                        # automatic switching horizontal / vertical window split orientation
    "feh"                               # image viewer, used to set the background image
    "i3-wm"                             # i3 display manager
    "dmenu"                             # dynamic menu for X
    "picom"                             # standalone compositor for Xorg
    "polybar"                           # status bar 
)

swayPackages=(
    "alacritty"                         # terminal emulator 
    "feh"                               # image viewer, used to set the background image
    "picom"                             # standalone compositor for Xorg
    "sway"                              # compositor for Wayland
    "wofi"                              # command launcher
    "waybar"                            # status bar for Sway 
)

swayAURPackages=(
    "wlogout"                           # logout menu for wayland
    "waypaper"                          # wallpaper setter for Wayland 
)

printScriptHeader "window manager"
printInfo "which window manager should be installed?"
# -----------------------------------------------------

services=$(gum choose "i3" "sway" --no-limit)

if [[ $services = *"i3"* ]]; then
    printInfo "install i3 packages"
    installPackagesWithPackman "${i3Packages[@]}"
fi

if [[ $services = *"sway"* ]]; then
    printInfo "install i3 packages"
    installPackagesWithPackman "${swayPackages[@]}"
    installPackagesWithParu "${swayAURPackages[@]}"
fi