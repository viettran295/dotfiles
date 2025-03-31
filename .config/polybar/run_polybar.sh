#!/bin/bash 

if ! pgrep -u $UID -x polybar > /dev/null; then
        polybar top & disown
fi
