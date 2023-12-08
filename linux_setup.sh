#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y

# install git
sudo apt install git -y
sudo apt install tig -y
git config --global user.name="viettr"
git config --global user.email "viettran295@gmail.com"
# git remote set-url origin https://<username>:<personal_token>@github.com/viettran295/<repo_name>.git

# install nvim
sudo apt install neovim -y

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
