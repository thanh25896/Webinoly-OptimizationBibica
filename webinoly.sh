#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/webinoly_custom.conf -O /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo rm /etc/mysql/my.cnf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/my.cnf -O /etc/mysql/my.cnf
systemctl restart mariadb
sudo webinoly -verify
sudo webinoly -info
