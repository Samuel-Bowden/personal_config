#!/usr/bin/bash

# Author: Sam Bowden
# Name: workspace_remove_description.sh
# Description: Prompts for a workspace number n between 1-10 and then removes the description from that workspace.
#   e.g. if a workspace had the name "1 - Browser", it would then be renamed to "1".

fuzzel="fuzzel -w 70 --dmenu -p"

num=$($fuzzel "Remove description from workspace number: ")

if [ $? -eq 1 ] 
then 
  exit 1
fi

if [[ $num -lt 1 || $num -gt 10 ]]
then
  $fuzzel "Error: '$num' is not a number between 1-10. Press enter to exit."
  exit 1
fi

swaymsg rename workspace number $num to $num
