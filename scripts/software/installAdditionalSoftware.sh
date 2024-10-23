#!/bin/bash

pacmanPackages=(
    "bitwarden"                         # secure and free password manager
    "brasero"                           # CD/DVD mastering tool
    "code"                              # visual Studio Code
    "filezilla"                         # FTP, FTPS and SFTP client
    "gimp"                              # image manipulation program
    "gradle"                            # build system for the JVM
    "intellij-idea-community-edition"   # IDE for Java, Groovy and other programming
    "krusader"                          # file manager
    "maven"                             # java  project management and project comprehension tool
    "libreoffice-fresh"                 # office tool
    "libreoffice-fresh-de"              #
    "rpi-imager"                        # raspberry Pi Imaging Utility
    "thunderbird"                       # mail and news reader
    "thunderbird-i18n-de"               #
    "ttf-jetbrains-mono-nerd"           # jetbrains font
    "ttf-hack-nerd"                     # hack font
    "unzip"                             # extracting and viewing files in .zip archives
    "virtualbox"                        #
    "virtualbox-guest-utils"            #
    "vlc"                               # multi-platform MPEG, VCD/DVD, and DivX player
    "wireguard-tools"                   # secure network tunnel
)

aurPackages=(
    "brave-bin"                         # web browser
    "joplin-app-image"                  # note and to-do application
    "synology-drive"                    # synology sync
    "zulu-21-bin"                       # Zulu builds of OpenJDK
)

# -----------------------------------------------------
printScriptHeader "additional software"

printInfo "install packages with pacman"
installSoftware "${pacmanPackages[@]}"

if pacman -Qs paru >/dev/null; then
  installAURSoftware "${aurPackages[@]}"
fi


printInfo "install my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"