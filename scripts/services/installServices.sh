#!/bin/bash

# -----------------------------------------------------
printScriptHeader "services"

printInfo "install and enable cups service"
installSoftware "cups" "cups-pdf"
sudo systemctl enable cups.service

printInfo "install and enable docker service"
installSoftware "docker" "docker-compose"
sudo systemctl enable docker.service

printInfo "install and enable ssh service"
installSoftware "openssh"
sudo systemctl enable sshd.service

printInfo "install and enable ntp service"
installSoftware "ntp"
sudo systemctl enable ntpd.service
sudo ntpdate pool.ntp.org

printInfo "install and enable lightdm service"
installSoftware "lightdm" "lightdm-gtk-greeter"
sudo systemctl enable lightdm.service