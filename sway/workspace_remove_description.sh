#!/usr/bin/bash

# Author: Sam Bowden
# Name: workspace_remove_description.sh
# Description: Prompts for a workspace number n between 1-10 and then removes the description from that workspace.
#   e.g. if a workspace had the name "1 - Browser", it would then be renamed to "1".

num=$(swaymsg -t get_workspaces | jq '.[] | select(.focused==true).num')

swaymsg rename workspace number $num to $num
