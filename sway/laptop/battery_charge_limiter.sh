#!/usr/bin/bash

# Author: Sam Bowden
# Name: battery_charge_limiter.sh
# Description: Prompts for user to enter a new battery charge end threshold, and then applies it if valid.

current_threshold=$(cat /sys/class/power_supply/BAT0/charge_control_end_threshold)

echo "Current charge end threshold: $current_threshold%"

read -p "New theshold: " new_threshold

if [[ $new_threshold -lt 1 || $new_threshold -gt 100 ]]
then
  echo "Error: Charge end threshold must be an integer between 1 and 100"
  read -p "Press enter to exit: "
  exit 1
fi

sudo bash -c "echo $new_threshold > /sys/class/power_supply/BAT0/charge_control_end_threshold"

echo "Charge end threshold with value $new_threshold% has been applied successfully"
read -p "Press enter to exit: "