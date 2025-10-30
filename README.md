# Hyprland Dotfiles

My personal Hyprland configuration on Ubuntu.

## Included
- **Hyprland**: Window manager config, keybinds, autostart
- **Waybar**: Status bar with custom modules
- **Rofi**: App launcher with themes
- **Kanshi**: Display configuration
- **SwayNC**: Notification daemon
- **Cava**: Audio visualizer
- **Wallust**: Wallpaper color theming
- **AGS**: Additional widgets and overlays
- **Btop**: System monitor
- **Swappy**: Screenshot annotation
- **Terminator**: Terminal emulator
- **Fish**: Shell configuration
- **Shell**: zsh/bash configs with p10k theme
- **Terminal**: kitty configuration
- **System**: Autostart, mimeapps, user dirs
- **Lists**: Installed packages (apt, snap, flatpak)
- **Audio**: PulseAudio configuration
- **Git**: Git configuration
- **Scripts**: Custom utility scripts
- **Fonts**: Custom fonts collection
- **Icons**: Icon themes
- **Wallpapers**: Wallpaper collection

## Restore
```bash
# Configs
cp -r .config/* ~/.config/
cp -r .local/* ~/.local/
cp .zshrc .bashrc .profile .p10k.zsh .gitconfig ~/

# Packages (review before installing)
# cat lists/apt-manual.txt | xargs sudo apt install -y
```

## Key Components Added
- **SwayNC**: Modern notification center
- **Cava**: Audio visualizer with shaders
- **Wallust**: Dynamic color theming from wallpapers
- **AGS**: Advanced widget system
- **Autostart**: Session management
- **System configs**: MIME types, user directories
