#!/bin/sh

#post install script for linux mint

#install essentials and update#

apt update
apt install -y open-vm-tools open-vm-tools-desktop
apt upgrade -y
apt install -y tmux python3 python3-pip git ncdu caffeine guake remmina openssh-server xrdp dkms bc dnsutils net-tools build-essential gcc make perl apt-transport-https curl samba samba-common-bin cifs-utils python3 python3-pip python3-venv git pipenv idle3

#set up alias#

echo 'alias updater="sudo apt update && sudo apt upgrade -y"' << /home/radpivm/.bashrc
echo 'alias installer="sudo apt install -y"' << /home/radpivm/.bashrc
echo 'alias uninstaller="sudo apt purge -y"' << /home/radpivm/.bashrc
echo 'alias myip="ip -br addr"' << /home/radpivm/.bashrc
echo 'alias makerun="sudo chmod +x"' << /home/radpivm/.bashrc
echo 'alias cleanup="sudo apt autoremove -y"' << /home/radpivm/.bashrc
echo 'alias basicmaint="updater && cleanup"' << /home/radpivm/.bashrc
echo 'alias myname="hostname -I"' << /home/radpivm/.bashrc
echo 'alias tempcheck="vcgencmd measure_temp"' << /home/radpivm/.bashrc


# make directories 

mkdir /home/radpivm/scripts
mkdir /home/radpivm/projects
mkdir /home/radpivm/setup

##extra programs##

#brave
apt install -y apt-transport-https curl && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install -y brave-browser

#brostrend wifi
sh -c 'wget deb.trendtechcn.com/install -O /tmp/install && sh /tmp/install'

