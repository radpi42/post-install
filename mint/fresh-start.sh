#!/bin/sh

#install and update#

apt update
apt install -y open-vm-tools open-vm-tools-desktop
apt upgrade -y
apt install -y tmux python3 python3-pip git ncdu caffeine guake remmina openssh-server xrdp dkms bc dnsutils net-tools build-essential gcc make perl apt-transport-https curl
apt install -y python3 python3-pip python3-venv git pipenv idle3

#set up alias#

echo 'alias updater="sudo apt update && sudo apt upgrade -y"'
echo 'alias installer="sudo apt install -y"'
echo 'alias uninstaller="sudo apt purge -y"'
echo 'alias myip="ip -br addr"'
echo 'alias makerun="sudo chmod +x"'
echo 'alias cleanup="sudo apt autoremove -y"'
echo 'alias basicmaint="updater && cleanup"'
echo 'alias myname="hostname -I"'
echo 'alias tempcheck="vcgencmd measure_temp"'


##extra programs##

#brave
apt install -y apt-transport-https curl && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install -y brave-browser

#brostrend wifi
sh -c 'wget deb.trendtechcn.com/install -O /tmp/install && sh /tmp/install'
