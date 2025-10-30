# Hyprland Dotfiles

My personal Hyprland configuration on Ubuntu.

## Included
- **Hyprland**: Window manager config, keybinds, autostart
- **Waybar**: Status bar
- **Rofi/Wofi**: App launchers  
- **Kanshi**: Display configuration
- **Shell**: zsh/bash configs
- **Terminal**: kitty/alacritty/foot
- **Notifications**: dunst/mako
- **Lists**: Installed packages (apt, snap, flatpak)

## Restore
```bash
# Configs
cp -r .config/* ~/.config/
cp .zshrc .bashrc ~/ 

# Packages (review before installing)
# cat lists/apt-manual.txt | xargs sudo apt install -y
```
