#!/usr/bin/bash

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

echo "alacritty"
ln alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

echo "helix"
ln helix/config.toml ~/.config/helix/config.toml

echo "mangohud"
ln mangohud/$name/MangoHud.conf ~/.config/MangoHud/MangoHud.conf

echo "sway"
ln sway/$name/config ~/.config/sway/config

echo "fuzzel"
ln fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini
