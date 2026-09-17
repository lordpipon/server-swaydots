for PACKAGE in "${PACKAGES[@]}"; do

```
# Check whether package is installed
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
