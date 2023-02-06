#!/usr/bin/bash

# Author: Sam Bowden
# Name: pop_up.sh
# Description: Opens up alacritty as a pop up window with the given command

alacritty -t "sway-pop-up" --config-file ~/.config/alacritty/pop_up.yml -e $1