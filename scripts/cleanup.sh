#!/bin/bash

printScriptHeader "cleanup"
# -----------------------------------------------------

printInfo "delete pacman cache"
sudo pacman -Scc

printInfo "delete paru cache"
paru -Scc

printInfo "remove orphan packages"
sudo pacman -Rns $(pacman -Qtdq)

printInfo "clean the cache"
rm -rf .cache/*