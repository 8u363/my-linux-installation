#!/bin/bash

# -----------------------------------------------------
printScriptHeader "wallpaper"

WALLPAPER_GIT="https://github.com/8u3631984/my-wallpaper.git"
WALLPAPER_DIR="/home/$USER/git/my-wallpaper"
printInfo "clone $WALLPAPER_GIT to $WALLPAPER_DIR"

cloneGitRepository $WALLPAPER_GIT $WALLPAPER_DIR