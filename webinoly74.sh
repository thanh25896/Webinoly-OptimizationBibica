#!/bin/bash
locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt update -y
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-Optimization/master/webinoly_php74.conf -O /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo apt update && sudo apt upgrade -y
sudo webinoly -verify
sudo webinoly -info
