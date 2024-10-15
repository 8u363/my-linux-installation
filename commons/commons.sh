#!/bin/bash

# -----------------------------------------------------
export COLOR_WHITE='\033[0;37m'
export COLOR_YELLOW='\033[1;32m'
export COLOR_GREEN='\033[0;32m'
export COLOR_RED=$'\033[0;31m'
# -----------------------------------------------------

# -----------------------------------------------------
# OUTPUT FUNCTIONS
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
    echo -e "${COLOR_GREEN} "
    echo "-----------------------------------------------------"
    echo ":: $1"
    echo "-----------------------------------------------------"
    echo -e "${COLOR_WHITE} "
}
# -----------------------------------------------------

# -----------------------------------------------------
# PACKAGE FUNCTIONS
installSoftware(){
    packages=();
    for pkg; do
        packages+=("${pkg}");
    done;   
    
    sudo pacman -S --needed --noconfirm --color always "${packages[@]}";
}

installPackagesWithParu(){
    packages=();
    for pkg; do
        packages+=("${pkg}");
    done;    

    paru -S --needed --noconfirm --color always "${packages[@]}";
}
# -----------------------------------------------------

# -----------------------------------------------------
# GIT FUNCTIONS
cloneGitReposiotry(){    
    gitRepoURL=$1
    target=$2

    if [ -d $target ];then
        if gum confirm "$target exists already. Do you want to remove it?"; then
            printInfo "remove $target"
            rm -rf $target

            printInfo "clone $gitRepoURL into $target"
            git clone $gitRepoURL  $target
        fi   
    else
        printInfo "clone $gitRepoURL into $target"
        git clone $gitRepoURL $target
    fi
}
# -----------------------------------------------------