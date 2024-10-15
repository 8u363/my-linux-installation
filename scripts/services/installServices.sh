#!/bin/bash

# -----------------------------------------------------
printScriptHeader "services"

printInfo "install and enable cups service"
installPackagesWithPackman "cups" "cups-pdf"
sudo systemctl enable cups.service

printInfo "install and enable docker service"
installPackagesWithPackman "docker" "docker-compose"
sudo systemctl enable docker.service

printInfo "install and enable ssh service"
installPackagesWithPackman "openssh"
sudo systemctl enable sshd.service

printInfo "install and enable ntp service"
installPackagesWithPackman "ntp"
sudo systemctl enable ntpd.service
sudo ntpdate pool.ntp.org

printInfo "install and enable lightdm service"
installPackagesWithPackman "lightdm" "lightdm-gtk-greeter"
sudo systemctl enable lightdm.service