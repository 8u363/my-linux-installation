#!/bin/bash

# -----------------------------------------------------
printScriptHeader "dotfiles"

DOTFILES_DIR="./dotfiles/"
CONFIG_DIRECTORY="/home/$USER/.config"

mkdir -p $CONFIG_DIRECTORY
stow config --adopt --dir $DOTFILES_DIR --target $CONFIG_DIRECTORY

cp $DOTFILES_DIR/zshenv ~/.zshenv
sudo chsh $USER -s /bin/zsh
