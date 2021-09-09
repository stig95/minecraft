#!/bin/sh
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install;curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux netcat openjdk-16-jre
adduser mcserver
sudo su - mcserver
wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver
yes|./mcserver install