#!/bin/bash

set -e

echo "Installing Server Sway Dots..."

sudo apt update

sudo apt install -y \
git \
sway \
waybar \
foot \
fuzzel \
swaylock \
swayidle \
dolphin \
firefox-esr \
network-manager-gnome \
pavucontrol \
playerctl \
brightnessctl \
xdg-desktop-portal-wlr \
pipewire \
wireplumber \
blueman

echo "Installing configs..."

mkdir -p ~/.config

cp -r config/* ~/.config/

echo "Enabling services..."

sudo systemctl enable --now NetworkManager

echo "Finished!"
echo "Restart Sway to apply changes."
