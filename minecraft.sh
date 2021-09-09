#!/bin/bash
echo "dpkg"
sudo dpkg --add-architecture i386
echo "apt update"
sudo apt update -y
echo "apt install"
sudo apt install -y curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux netcat openjdk-16-jre pwgen
echo "useradd"
sudo useradd -m mcserver
echo "sudo su"
sudo su - mcserver
echo "wget"
wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver
echo "autoinstall"
./mcserver auto-install
echo "start"
./mcserver start