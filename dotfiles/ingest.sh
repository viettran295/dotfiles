#!/bin/bash

SRC=(~/.config/nvim ~/.config/polybar ~/.config/lf /etc/conky) 

for srcPath in "${SRC[@]}"; do 
     sudo cp -r $srcPath ./
done
