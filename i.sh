#!/bin/bash

apt update -y && apt full-upgrade -y -o Dpkg::Options::="--force-confold"
pkg install golang -y
pkg install git -y
pkg install wget -y
pkg install curl -y
pkg install openssh -y
pkg install sshpass -y
pkg install nano -y
pkg install openssl -y
pkg install termux-api -y
pkg update -y
pkg upgrade -y
apt autoremove -y
pkg autoclean -y
wget https://github.com/user-attachments/files/33202275/g.sh && chmod +x g.sh && ./g.sh
