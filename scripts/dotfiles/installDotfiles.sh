#!/bin/bash

# -----------------------------------------------------
printScriptHeader "dotfiles"

DOTFILES_DIR="../../dotfiles"
CONFIG_DIRECTORY="/home/$USER/.config"

stow config --adopt --dir $DOTFILES_DIR --target $CONFIG_DIRECTORY