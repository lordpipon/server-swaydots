# Server Sway Dots

Minimal black Sway configuration made for lightweight servers/ server laptops.

## Features

- Sway window manager
- Waybar system monitor bar
- Foot terminal
- Fuzzel launcher
- NetworkManager WiFi support
- PipeWire audio
- Volume controls
- Screen brightness controls
- Bluetooth support
- Minimal dark theme

## Required packages

- sway
- waybar
- foot
- fuzzel
- swaylock
- swayidle
- dolphin
- firefox-esr
- network-manager-gnome
- pavucontrol
- playerctl
- brightnessctl
- xdg-desktop-portal-wlr
- pipewire
- wireplumber
- blueman

## Warning
These dots were used on my laptop, the thinkpad E14 gen 3, and it contains the battery and bluetooth on the waybar.
Tutorial how to remove the battery and other laptop features will be in removelaptopfeatures.md

## Install on debian or ubuntu based distros (automatic)

```bash
git clone https://github.com/lordpipon/server-swaydots.git
cd server-swaydots
chmod +x autoinstall-debian.sh
./autoinstall-debian.sh
```

## Install on arch based distros (automatic)

```bash
git clone https://github.com/lordpipon/server-swaydots.git
cd server-swaydots
chmod +x autoinstall-arch.sh
./autoinstall-arch.sh
```
