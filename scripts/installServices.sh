#!/bin/bash

printScriptHeader "services"
# -----------------------------------------------------

printInfo "which services should be installed?"
services=$(gum choose "cups" "docker" "ssh" "ntp" "lightdm" --no-limit)

if [[ $services = *"cups"* ]]; then
    printInfo "install and enable cups service"
    installPackagesWithPackman "cups" "cups-pdf"
    sudo systemctl enable cups.service
fi

if [[ $services = *"docker"* ]]; then
    printInfo "install and enable docker service"
    installPackagesWithPackman "docker" "docker-compose"
    sudo systemctl enable docker.service
fi

if [[ $services = *"ssh"* ]]; then
    printInfo "install and enable ssh service"
    installPackagesWithPackman "openssh"
    sudo systemctl enable sshd.service
fi

if [[ $services = *"ntp"* ]]; then
    printInfo "install and enable ntp service"
    installPackagesWithPackman "ntp"
    sudo systemctl enable ntpd.service
    sudo ntpdate pool.ntp.org
fi

if [[ $services = *"lightdm"* ]]; then
    printInfo "install and enable lightdm service"
    installPackagesWithPackman "lightdm" "lightdm-gtk-greeter"
    sudo systemctl enable lightdm.service
fi