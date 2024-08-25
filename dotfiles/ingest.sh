#!/bin/bash

SRC=(~/.config/nvim ~/.config/polybar ~/.config/lf /etc/conky ~/.bashrc) 

for srcPath in "${SRC[@]}"; do 
     sudo cp -r $srcPath ./
done
