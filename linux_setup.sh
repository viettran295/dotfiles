#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y

# setup git
sudo apt install git -y
sudo apt install tig -y
git config --global user.name="viettr"
git config --global user.email "viettran295@gmail.com"
# git remote set-url origin https://<username>:<personal_token>@github.com/viettran295/<repo_name>.git

# setup go
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
