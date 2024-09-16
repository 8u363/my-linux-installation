#!/bin/bash

qtilePackages=(
    "alacritty"                         # terminal emulator 
    "feh"                               # image viewer, used to set the background image
    "dmenu"                             # dynamic menu for X
    "picom"                             # standalone compositor for Xorg
    "qtile"                             # qtile display manager
)

printScriptHeader "window manager"
printInfo "which window manager should be installed?"
# -----------------------------------------------------

services=$(gum choose "qtile" --selected="qtile" --no-limit)

if [[ $services = *"qtile"* ]]; then
    printInfo "install qtile packages"
    installPackagesWithPackman "${qtilePackages[@]}"
fi