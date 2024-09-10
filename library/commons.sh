#!/bin/bash

# -----------------------------------------------------
export COLOR_WHITE='\033[0;37m'
export COLOR_YELLOW='\033[1;32m'
export COLOR_GREEN='\033[0;32m'
export COLOR_RED=$'\033[0;31m'
# -----------------------------------------------------

printBanner(){
    echo -e "${COLOR_GREEN} "
    figlet -c -w 75 $1
    echo -e "${COLOR_WHITE} "
}

printScriptHeader(){
    echo
    echo -e "${COLOR_YELLOW} "
    figlet -c -w 75 -f  small $1
    echo -e "${COLOR_WHITE} "
}

printInfo(){
    echo -e "${COLOR_YELLOW} "
    echo ":: $1"
    echo -e "${COLOR_WHITE} "
}

installPackagesWithPackman(){
    packages=();
    for pkg; do
        packages+=("${pkg}");
    done;   
    
    sudo pacman -S --needed --noconfirm --color always "${packages[@]}";
}