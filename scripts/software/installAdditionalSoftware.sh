#!/bin/bash

pacmanPackages=(
)

aurPackages=(
)

# -----------------------------------------------------
printScriptHeader "additional software"

printInfo "install packages with pacman"
installSoftware "${pacmanPackages[@]}"

if pacman -Qs paru >/dev/null; then
  installAURSoftware "${aurPackages[@]}"
fi
