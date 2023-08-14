#!/usr/bin/env zsh

setxkbmap -option ctrl:nocaps -option compose:ralt

$HOME/bin/landscape.sh

# disable sandby suspend and off from DPMS
xset dpms 0 0 0

# disable x screensaver
xset s off
