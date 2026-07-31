# Removing Laptop Features

This guide removes laptop-specific features from Server Sway Dots.

Useful for:
- old laptops used as servers
- plugged-in 24/7 machines
- devices without need for battery management
- headless setups

## Disable Battery Notifications

Remove desktop battery warnings:

```bash
sudo apt remove power-profiles-daemon upower
```

## Remove battery indicator from waybar
Find ur waybar config with `nano`

Find:
    "modules-center": [
        "cpu",
        "memory",
        "disk",
        "network",
        "battery",
        "custom/uptime"
    ],

Remove "battery,
Save, exit and restart waybar