#!/bin/bash

printScriptHeader "paru"

if pacman -Qs paru > /dev/null ; then
  printInfo "paru is already installed"
else
  cloneGitReposiotry "https://aur.archlinux.org/paru.git" "/tmp/paru" 

  CURRENT_DIR=$(pwd)
  cd /tmp/paru &&  makepkg -si --noconfirm
  cd $CURRENT_DIR
  rm -rf /tmp/paru
fi