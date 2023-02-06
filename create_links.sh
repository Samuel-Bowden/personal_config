#!/usr/bin/bash

# Author: Sam Bowden
# Name: create_links.sh
# Description: Script to link all configs and scripts in git repository to their correct locations on device filesystem

read -p "Enter name of configuration profile: " profile

case $profile in
  "desktop")
    name="desktop"
    ;;

  "laptop")
    name="laptop"
    ;;

  *)
    echo "Invalid profile name"
    exit 1
    ;;
esac

echo "Creating links for $name profile:"

echo "Alacritty:"
ln -v alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Helix:"
ln -v helix/config.toml ~/.config/helix/config.toml

echo "Mangohud:"
ln -v mangohud/$name/MangoHud.conf ~/.config/MangoHud/MangoHud.conf

echo "Sway:"
ln -v sway/$name/config ~/.config/sway/config

echo "Fuzzel:"
ln -v fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini

echo "Waybar:"
ln -v waybar/$name/config.json ~/.config/waybar/config
ln -v waybar/$name/style.css ~/.config/waybar/style.css

echo "Sway custom scripts:"
ln -v sway_custom_scripts/workspace_add_description.sh ~/.local/bin/sway_workspace_add_description
ln -v sway_custom_scripts/workspace_remove_description.sh ~/.local/bin/sway_workspace_remove_description