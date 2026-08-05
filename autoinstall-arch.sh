#!/bin/bash

set -e

echo "Installing Server Sway Dots (Arch)"

sudo pacman -Syu --noconfirm

sudo pacman -S --needed --noconfirm \
git \
sway \
waybar \
foot \
fuzzel \
swaylock \
swayidle \
dolphin \
firefox \
networkmanager \
pavucontrol \
playerctl \
brightnessctl \
xdg-desktop-portal-wlr \
pipewire \
wireplumber \
blueman \
zsh

mkdir -p ~/.config

cp -r config/* ~/.config/

sudo systemctl enable --now NetworkManager

echo "Done. Restart Sway."
