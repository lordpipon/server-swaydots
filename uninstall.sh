#!/bin/bash

set -e

echo "================================="
echo "   Server Sway Dots Uninstaller"
echo "================================="
echo

# Detect package manager

if command -v pacman >/dev/null 2>&1; then
PM="pacman"
elif command -v apt >/dev/null 2>&1; then
PM="apt"
else
echo "Unsupported package manager."
exit 1
fi

echo "Removing Server Sway Dots configuration..."
echo

# Remove configuration files/directories

rm -rf "$HOME/.config/sway"
rm -rf "$HOME/.config/waybar"
rm -rf "$HOME/.config/foot"
rm -rf "$HOME/.config/fuzzel"

echo "Configuration removed."
echo

# Packages installed by Server Sway Dots

PACKAGES=(
sway
waybar
foot
fuzzel
swaylock
swayidle
dolphin
firefox
pavucontrol
playerctl
brightnessctl
xdg-desktop-portal-wlr
pipewire
wireplumber
blueman
zsh
)

echo "Package removal"
echo "---------------"
echo "You will be asked about each installed package."
echo

for PACKAGE in "${PACKAGES[@]}"; do

```
if [[ "$PM" == "pacman" ]]; then
    if ! pacman -Q "$PACKAGE" &>/dev/null; then
        continue
    fi
else
    if ! dpkg -s "$PACKAGE" &>/dev/null; then
        continue
    fi
fi

read -rp "Uninstall $PACKAGE? [y/N]: " ANSWER

if [[ "$ANSWER" =~ ^[Yy]$ ]]; then

    if [[ "$PM" == "pacman" ]]; then
        sudo pacman -Rns --noconfirm "$PACKAGE" || true
    else
        sudo apt remove -y "$PACKAGE" || true
    fi

    echo "$PACKAGE removed."
else
    echo "$PACKAGE kept."
fi

echo
```

done

if [[ "$PM" == "apt" ]]; then
read -rp "Run 'apt autoremove' to remove unused dependencies? [y/N]: " AUTOREMOVE

```
if [[ "$AUTOREMOVE" =~ ^[Yy]$ ]]; then
    sudo apt autoremove -y
fi
```

fi

echo
echo "================================="
echo "   Uninstallation complete!"
echo "================================="
echo
echo "Log out and back in, or reboot, to finish."
