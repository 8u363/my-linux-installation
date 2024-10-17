#!/bin/bash

# -----------------------------------------------------
printScriptHeader "dotfiles"

DOTFILES_GIT="https://github.com/8u3631984/my-dotfiles.git"
DOTFILES_DIR="/home/$USER/git/my-dotfiles"
CONFIG_DIRECTORY="/home/$USER/.config"

cloneGitRepository $DOTFILES_GIT $DOTFILES_DIR
stow config --adopt --dir $DOTFILES_DIR --target $CONFIG_DIRECTORY