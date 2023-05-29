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

echo "Ensuring config directories exist:"
mkdir -p ~/.config
cd ~/.config
mkdir -p alacritty helix MangoHud sway/bin fuzzel waybar fish/functions nvim
cd -

echo "Creating links for $name profile:"

echo "Alacritty:"
ln -v alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -v alacritty/pop_up.yml ~/.config/alacritty/pop_up.yml

echo "Helix:"
ln -v helix/config.toml ~/.config/helix/config.toml

echo "Mangohud:"
ln -v mangohud/$name/MangoHud.conf ~/.config/MangoHud/MangoHud.conf

echo "Sway:"
ln -v sway/$name/config ~/.config/sway/config
ln -v sway/workspace_add_description.sh ~/.config/sway/bin/workspace_add_description
ln -v sway/workspace_remove_description.sh ~/.config/sway/bin/workspace_remove_description
ln -v sway/pop_up.sh ~/.config/sway/bin/pop_up
if [ $name = "laptop" ]
then
  ln -v sway/$name/battery_charge_limiter.sh ~/.config/sway/bin/battery_charge_limiter
fi

echo "Fuzzel:"
ln -v fuzzel/fuzzel.ini ~/.config/fuzzel/fuzzel.ini

echo "Waybar:"
ln -v waybar/$name/config.json ~/.config/waybar/config
ln -v waybar/$name/style.css ~/.config/waybar/style.css

echo "Fish:"
ln -v fish/config.fish ~/.config/fish/config.fish
ln -v fish/fish_variables ~/.config/fish/fish_variables
ln -v fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
ln -v fish/functions/nv.fish ~/.config/fish/functions/nv.fish

echo "Neovim:"
ln -v nvim/init.lua ~/.config/nvim/init.lua
ln -v nvim/filetype.vim ~/.config/nvim/filetype.vim
ln -vs $PWD/nvim/lua ~/.config/nvim/lua
ln -vs $PWD/nvim/syntax ~/.config/nvim/syntax
