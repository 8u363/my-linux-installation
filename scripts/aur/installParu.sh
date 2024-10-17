#!/bin/bash

# -----------------------------------------------------
printScriptHeader "paru"

if pacman -Qs paru > /dev/null ; then
  printInfo "paru is already installed"
else
  printInfo "install paru"

  cloneGitReposiotry "https://aur.archlinux.org/paru.git" "/tmp/paru"
  CURRENT_DIR=$(pwd)
  cd /tmp/paru &&  makepkg -si --noconfirm
  cd $CURRENT_DIR

  printInfo "remove /tmp/paru"
  rm -rf /tmp/paru
fi