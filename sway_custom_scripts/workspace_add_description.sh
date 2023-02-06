#!/usr/bin/bash

# Author: Sam Bowden
# Name: workspace_add_description.sh
# Description: Prompts for workspace number n between 1-10 and a description for that workspace.
#   It then adds the description to the name of the workspace, e.g. renaming it from "1" to "1 - Browser"

fuzzel="fuzzel -w 70 --dmenu -p"

num=$($fuzzel "Add description to workspace: ")

if [ $? -eq 1 ] 
then 
  exit 1
fi

if [[ $num -lt 1 || $num -gt 10 ]]
then
  $fuzzel "Error: '$num' is not a number between 1-10. Press enter to exit."
  exit 1
fi

description=$($fuzzel "Description: ")

if [ $? -eq 1 ] 
then 
  exit 1
fi

swaymsg rename workspace number $num to "$num - $description"