#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y

# install git
sudo apt install git -y
sudo apt install tig -y
git config --global user.name="viettr"
git config --global user.email "viettran295@gmail.com"
# git remote set-url origin https://viettran295:<personal_token>@github.com/viettran295/<repo_name>.git

# install and setup nvim 
sudo snap install neovim -y
mkdir ~/.config/nvim ~/Desktop/nvim_setup
cd ~/Desktop/nvim_setup && git clone https://github.com/nvim-lua/kickstart.nvim.git
cp ./init.lua ~/.config/nvim

# install docker
## Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update 

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# install java
sudo apt install openjdk-17-jre-headless -y
sudo apt install openjdk-17-jdk-headless -y

# install go
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# install different version (python3.9)
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
 
mkdir ~/python && cd ~/python
wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0b3.tgz
cd Python-3.9.0b3
./configure --enable-optimizations
 
sudo make install

# install stm32cudeide (optional)
# bash st-stm32cubeide_1.14.0_19471_20231121_1200_amd64.sh
# sudo apt-get install libncurses5 -y

#Cài đặt tiếng việt
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
# lf - list file Terminal file manager
sudo apt install lf
