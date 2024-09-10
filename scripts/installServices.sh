#!/bin/bash

printScriptHeader "services"

# cups service
printInfo "install cups service"
installPackagesWithPackman "cups" "cups-pdf"
sudo systemctl enable cups.service

# docker service
printInfo "install docker service"
installPackagesWithPackman "docker" "docker-compose"
sudo systemctl enable docker.service

# ssh service
printInfo "install ssh service"
installPackagesWithPackman "openssh"
sudo systemctl enable sshd.service

# ntp service
printInfo "install ntp service"
installPackagesWithPackman "ntp"
sudo systemctl enable ntpd.service
sudo ntpdate pool.ntp.org

# lightdm service
printInfo "install lightdm service"
installPackagesWithPackman "lightdm" "lightdm-gtk-greeter"
sudo systemctl enable lightdm.service