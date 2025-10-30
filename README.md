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

## Setup on New System

### 1. Install Base Packages
```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install essential packages
cat lists/apt-manual.txt | xargs sudo apt install -y

# Install Flatpak packages
cat lists/flatpak.txt | xargs flatpak install -y

# Install Snap packages
cat lists/snap.txt | xargs sudo snap install
```

### 2. Install Fonts and Icons
```bash
# Copy fonts
cp -r .fonts/* ~/.local/share/fonts/
fc-cache -fv

# Copy icons
cp -r .icons/* ~/.local/share/icons/
```

### 3. Restore Configurations
```bash
# Backup existing configs (optional)
mkdir -p ~/dotfiles-backup
cp -r ~/.config ~/dotfiles-backup/ 2>/dev/null || true

# Copy configurations
cp -r .config/* ~/.config/
cp -r .local/* ~/.local/
cp .zshrc .bashrc .profile .p10k.zsh .gitconfig ~/

# Copy wallpapers
mkdir -p ~/Pictures
cp -r Pictures/* ~/Pictures/

# Set permissions
chmod +x ~/.local/bin/*
chmod +x ~/.config/hypr/scripts/*
```

### 4. Enable Services
```bash
# Enable user services
systemctl --user enable kanshi
systemctl --user start kanshi

# Set default shell (if using zsh)
chsh -s $(which zsh)
```

### 5. First Login
1. Log out and select "Hyprland" session
2. First boot will run initial setup script
3. Configure displays using Super+Shift+D
4. Enjoy your Hyprland setup!

## Key Components Added
- **SwayNC**: Modern notification center
- **Cava**: Audio visualizer with shaders
- **Wallust**: Dynamic color theming from wallpapers
- **AGS**: Advanced widget system
- **Autostart**: Session management
- **System configs**: MIME types, user directories
