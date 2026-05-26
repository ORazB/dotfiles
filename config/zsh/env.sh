#!/bin/bash
# Environment Configuration

# Hyprland
export HYPR_DIR="${HOME}/.config/hypr"
export HYPR_CONF="${HYPR_DIR}"
export HYPR_SCRIPTS="${HYPR_DIR}/scripts"

# Application configs
export WAYBAR_DIR="${HOME}/.config/waybar"
export ROFI_DIR="${HOME}/.config/rofi"
export NVIM_DIR="${HOME}/.config/nvim"
export SWAYNC_DIR="${HOME}/.config/swaync"

# Cache directories
export WALLPAPER_CACHE="${HOME}/.cache/wallpaper"

# User wallpapers
export USER_WALLPAPERS="${HOME}/wallpaper"
export DEFAULT_WALLPAPER="${USER_WALLPAPERS}/default.jpg"

# Ensure cache directories exist
mkdir -p "${WALLPAPER_CACHE}"