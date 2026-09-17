#!/bin/bash

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

# Remove configuration installed by the dots

rm -rf "$HOME/.config/sway"
rm -rf "$HOME/.config/waybar"
rm -rf "$HOME/.config/foot"
rm -rf "$HOME/.config/fuzzel"

echo "Configuration removed."
echo

# Package lists

if [[ "$PM" == "pacman" ]]; then

```
PACKAGES=(
    sway
    waybar
    foot
    fuzzel
    swaylock
    swayidle
    dolphin
    firefox
    networkmanager
    network-manager-applet
    pavucontrol
    playerctl
    brightnessctl
    xdg-desktop-portal-wlr
    pipewire
    wireplumber
    blueman
    zsh
)
```

else

```
PACKAGES=(
    sway
    waybar
    foot
    fuzzel
    swaylock
    swayidle
    dolphin
    firefox-esr
    network-manager
    network-manager-gnome
    pavucontrol
    playerctl
    brightnessctl
    xdg-desktop-portal-wlr
    pipewire
    wireplumber
    blueman
    zsh
)
```

fi

echo "Package removal"
echo "---------------"
echo "You will be asked about each installed package."
echo

for PACKAGE in "${PACKAGES[@]}"; do

```
# Check if package is installed
if [[ "$PM" == "pacman" ]]; then

    if ! pacman -Q "$PACKAGE" &>/dev/null; then
        continue
    fi

else

    if ! dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "install ok installed"; then
        continue
    fi

fi

echo
read -rp "Uninstall $PACKAGE? [y/N]: " ANSWER

if [[ "$ANSWER" =~ ^[Yy]$ ]]; then

    echo "Removing $PACKAGE..."

    if [[ "$PM" == "pacman" ]]; then
        sudo pacman -Rns --noconfirm "$PACKAGE"
    else
        sudo apt remove -y "$PACKAGE"
    fi

    echo "$PACKAGE removed."

else

    echo "$PACKAGE kept."

fi
```

done

echo

# Optional dependency cleanup for Debian/Ubuntu

if [[ "$PM" == "apt" ]]; then

```
read -rp "Run apt autoremove for unused dependencies? [y/N]: " AUTOREMOVE

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
echo "Log out and back in or reboot to finish."
