#!/bin/bash

# -----------------------------------------------------
printScriptHeader "dotfiles"

DOTFILES_GIT="https://github.com/8u3631984/my-dotfiles.git"
DOTFILES_DIR="/home/$USER/git/my-dotfiles"
CONFIG_DIRECTORY="/home/$USER/.config"
printInfo "clone $DOTFILES_GIT to $DOTFILES_DIR"

cloneGitRepository $DOTFILES_GIT $DOTFILES_DIR