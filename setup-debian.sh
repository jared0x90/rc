#!/usr/bin/env bash

# to setup a box type this at bash upon login...
#
# source <(curl -s https://raw.githubusercontent.com/jared0x90/dotfiles/master/setup-debian.sh)
#

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt update -y && apt upgrade -y

apt install git htop iftop ufw mosh weechat strace dstat mc swapspace nodejs make cmatrix build-essential -y
ufw allow 22
ufw allow 60000:60100/udp
ufw --force enable

echo ""
echo "quick setup included..."
echo "------------------------------------------"
echo "git htop iftop ufw mosh weechat strace dstat mc"
echo "swapsace nodejs make cmatrix"
echo ""
echo "firewall rules block all except"
echo "------------------------------------------"
echo "22          *   ssh"
echo "60000-60100 udp mosh"
echo ""