# Server Sway Dots

Minimal black Sway configuration made for servers/server laptops.

I don't recommend using it for normal use, but it's still really lightweight and minimal ram usage.

## Features

* Sway window manager
* Waybar system monitor bar
* Foot terminal
* Fuzzel launcher
* NetworkManager WiFi support
* PipeWire audio
* Volume controls
* Screen brightness controls
* Bluetooth support
* Minimal dark theme

## Other Info

In ~/.config/sway/config there is a comment # kb layout, default is **us** if u want for example czech keyboard u change **us** to **cz** or other. Mouse acceleration is off by default and the speed is set by me, u can set it however u want and on top there there is a line that says something waybar right should say like battery, or something, if ur a desktop user u can remove it.

## Reloading Sway

SUPER + SHIFT + E  - Log out to login manager
`sway reload` (in terminal) Reloads sway in sway.

## Required packages

* sway
* waybar
* foot
* fuzzel
* swaylock
* swayidle
* dolphin
* firefox-esr
* network-manager-gnome
* pavucontrol
* playerctl
* brightnessctl
* xdg-desktop-portal-wlr
* pipewire
* wireplumber
* blueman
* zsh

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

## Uninstall

To uninstall Server Sway Dots, run:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

The uninstall script will remove the Server Sway Dots configuration files and ask you individually if you want to uninstall each package.

For every installed package, you will be asked:

```text
Uninstall sway? [y/N]:
```

Enter `y` to uninstall the package or `n` to keep it.

### Important

The uninstall script only removes packages that are currently installed. If you choose to uninstall a package, make sure you don't need it for anything else on your system.

The configuration files removed by the uninstall script include:

* `~/.config/sway`
* `~/.config/waybar`
* `~/.config/foot`
* `~/.config/fuzzel`

After uninstalling, log out and back in or reboot your system.
