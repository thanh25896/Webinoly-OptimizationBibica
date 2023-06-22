#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
screen -S bibica
sudo apt update && sudo apt upgrade -y
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/webinoly/master/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo sed -i "s|#timezone:America/Mexico_City|timezone:Asia/Ho_Chi_Minh|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#nginx-ppa:stable|nginx-ppa:mainline|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#max-mb-uploads:100|max-mb-uploads:100000|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#wp-admin-auth:true|wp-admin-auth:false|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-cache-control:public, max-age=604800, immutable|header-cache-control:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-hsts:default|header-hsts:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-referrer:no-referrer-when-downgrade|header-referrer:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-xcto:true|header-xcto:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-xfo:sameorigin|header-xfo:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#header-xfo-url:<allow-from url>|header-xfo-url:off|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#php-max-mem:192|php-max-mem:512|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#php-max-time:60|php-max-time:6000|" /opt/webinoly/webinoly.conf
sudo sed -i "s|#php-max-files:20|php-max-files:2000|" /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo webinoly -verify
sudo webinoly -info
