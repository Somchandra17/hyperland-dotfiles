#!/bin/bash

# Check if HDMI is connected
if hyprctl monitors | grep -q "HDMI-A-1"; then
    # HDMI connected - disable laptop screen
    hyprctl keyword monitor "eDP-1,disable"
    hyprctl keyword monitor "HDMI-A-1,1920x1080@74.97,0x0,1"
else
    # HDMI disconnected - enable laptop screen
    hyprctl keyword monitor "eDP-1,1920x1080@60,0x0,1"
fi
