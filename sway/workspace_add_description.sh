#!/usr/bin/bash

# Author: Sam Bowden
# Name: workspace_add_description.sh
# Description: Prompts for a description for the current workspace.
#   It then adds the description to the name of the workspace, e.g. renaming it from "1" to "1 - Browser"

num=$(swaymsg -t get_workspaces | jq '.[] | select(.focused==true).num')

read -p "Add description: " description

swaymsg rename workspace number $num to "$num - $description"