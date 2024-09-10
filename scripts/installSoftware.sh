#!/bin/bash

packages=(    
    "ansible"                           #
    "bitwarden"                         # secure and free password manager
    "brasero"                           # CD/DVD mastering tool
    "btop"                              # monitor of system resources
    "code"                              # visual Studio Code
    "eza"                               # modern replacement for ls
    "filezilla"                         # FTP, FTPS and SFTP client  
    "fzf"                               # command-line fuzzy finde
    "gimp"                              # image manipulation program
    "gradle"                            # build system for the JVM
    "intellij-idea-community-edition"   # IDE for Java, Groovy and other programming 
    "krusader"                          # file manager
    "less"                              #
    "maven"                             # java  project management and project comprehension tool
    "libreoffice-fresh"                 # office tool
    "libreoffice-fresh-de"              #
    "neovim"                            # commandline text editor
    "net-tools"                         # configuration tools for Linux networking
    "networkmanager"                    #
    "network-manager-applet"            #
    "nm-connection-editor"              # networkManager GUI 
    "rpi-imager"                        # raspberry Pi Imaging Utility
    "thunderbird"                       # mail and news reader
    "thunderbird-i18n-de"               #
    "ttf-jetbrains-mono-nerd"           # jetbrains font
    "ttf-hack-nerd"                     # hack font
    "unzip"                             # extracting and viewing files in .zip archives
    "virtualbox"                        #
    "virtualbox-guest-utils"            #
    "vlc"                               # multi-platform MPEG, VCD/DVD, and DivX player
    "wget"                              # network utility to retrieve files from the Web
    "wireguard-tools"                   # secure network tunnel
    "zsh"                               # command interpreter (
    "zsh-completions"                   # additional completion definitions for Zsh
)

printScriptHeader "install software"

installPackagesWithPackman "${packages[@]}"