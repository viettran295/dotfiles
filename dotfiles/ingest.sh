#!/bin/bash

SRC=(~/.config/nvim ~/.config/polybar /etc/conky) 

for srcPath in "${SRC[@]}"; do 
     sudo cp -r $srcPath ./
done
