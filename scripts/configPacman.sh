#!/bin/bash

printSmallBanner "pacman"

sudo cp pacman.conf /etc/pacman.conf
sudo pacman -Syu