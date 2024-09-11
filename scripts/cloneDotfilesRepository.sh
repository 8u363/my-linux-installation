#!/bin/bash

printScriptHeader "dotfiles"
# -----------------------------------------------------

WALLPAPER_GIT="https://github.com/8u3631984/my-dotfiles.git"
WALLPAPER_DIR="/home/$USER/git/my-dotfiles"
CONFIG_DIRECTORY="/home/$USER/.config"

cloneGitReposiotry $WALLPAPER_GIT $WALLPAPER_DIR

installPackagesWithPackman "stow"