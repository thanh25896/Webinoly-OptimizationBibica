#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo sed -i "s|timezone:Asia/Ho_Chi_Minh|#timezone:Asia/Ho_Chi_Minh|" /opt/webinoly/webinoly.conf





sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light


sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo webinoly -verify
sudo webinoly -info




sudo sed -i "s|timezone:Asia/Ho_Chi_Minh|#timezone:Asia/Ho_Chi_Minh|" /opt/webinoly/webinoly.conf


sed -i "s|CUSTOM1_LOG = .*|CUSTOM1_LOG = \"/home/nginx/domains/\*/log/access.log\"|" /etc/csf/csf.conf
