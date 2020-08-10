#!/bin/bash

echo "INSTALLING REPO FOR VBOX"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian focal contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

echo "UPDATE SYSTEM"
sudo apt update -y

echo "INSTALL VBOX"
sudo apt install -y virtualbox-6.1
sudo systemctl status vboxdrv
virtualbox

echo "START VBOX FROM PANEL"

exit 0


