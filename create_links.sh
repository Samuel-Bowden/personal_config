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
