#!/bin/bash

SRC=(~/.config/kitty ~/.config/yazi ~/.config/nvim ~/.config/polybar ~/.bashrc) 

for srcPath in "${SRC[@]}"; do 
     sudo cp -r $srcPath ./
done
