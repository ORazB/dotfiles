# Astral

Hyprland dotfiles on Arch Linux.

## Structure

```
.
├── config/          # ~/.config app configs
│   ├── btop/        # System monitor
│   ├── fastfetch/   # System info fetch
│   ├── gtk-3.0/     # GTK3 theme settings
│   ├── gtk-4.0/     # GTK4 theme settings
│   ├── hypr/        # Hyprland WM config, keybinds, scripts
│   ├── kitty/       # Terminal emulator
│   ├── matugen/     # Material You color generator templates
│   ├── nvim/        # Neovim (lazy.nvim)
│   ├── rofi/        # App launcher
│   ├── sddm/        # Display manager theme
│   ├── starship/    # Shell prompt
│   ├── swappy/      # Screenshot editor
│   ├── swaync/      # Notification daemon
│   ├── waybar/      # Status bar
│   ├── wlogout/     # Logout/power menu
│   ├── yay/         # AUR helper
│   ├── yazi/        # File manager (TUI)
│   └── zsh/         # Shell modules (aliases, path, plugins)
└── home/            # ~/ dotfiles
    └── .zshrc
```

## Packages

### Core

| Package | Purpose |
|---|---|
| `hyprland` | Wayland compositor |
| `hypridle` | Idle daemon |
| `hyprlock` | Lock screen |
| `waybar` | Status bar |
| `wlogout` | Logout/power menu |
| `rofi-lbonn-wayland` | App launcher (Wayland fork) |
| `swaync` | Notification daemon |
| `kitty` | Terminal emulator |
| `sddm` | Display manager |
| `dunst` | Notification daemon (fallback) |

### Shell

| Package | Purpose |
|---|---|
| `zsh` | Shell |
| `starship` | Prompt |
| `zoxide` | Smarter `cd` |
| `zsh-autosuggestions` | Fish-like autosuggestions |
| `zsh-syntax-highlighting` | Syntax highlighting |
| `zsh-history-substring-search` | History search |
| `fastfetch` | System info |
| `yazi` | Terminal file manager |
| `btop` | System monitor |

### Appearance

| Package | Purpose |
|---|---|
| `matugen` | Material You color generation from wallpaper |
| `gtk3` `gtk4` | GTK toolkits |
| `nwg-look` | GTK settings GUI |
| `ttf-firacode-nerd` | Monospace font (kitty, terminal) |
| `python` | Config generation scripts |

### Screenshots

| Package | Purpose |
|---|---|
| `grim` | Screenshot utility |
| `slurp` | Area selection |
| `swappy` | Screenshot editor/annotation |
| `wl-clipboard` | `wl-copy` / `wl-paste` |
| `jq` | JSON processing (scripts) |

### Audio / Media

| Package | Purpose |
|---|---|
| `pipewire` `wireplumber` | Audio system |
| `pavucontrol` | Volume control GUI |
| `pamixer` | Volume CLI |
| `playerctl` | Media player controls |
| `brightnessctl` | Backlight control |
| `cava` | Audio visualizer (waybar) |

### Wallpaper

| Package | Purpose |
|---|---|
| `hyprpaper` | Wallpaper daemon |
| `swww` | Wallpaper daemon (with transitions) |
| `imagemagick` | Image processing (blur/crop) |

### Utilities

| Package | Purpose |
|---|---|
| `polkit-gnome` | Authentication agent |
| `xdg-desktop-portal-hyprland` | Desktop portal |
| `networkmanager` | Network management |
| `blueman` | Bluetooth management |
| `neovim` | Editor |
| `git` | Version control |
| `docker` `docker-compose` | Containers |

### Optional

| Package | Purpose |
|---|---|
| `firefox` | Browser |
| `nautilus` | File manager (GUI) |
| `claude-code` | Claude Code TUI (custom keybind) |
| `qalculate-gtk` | Calculator (XF86Calculator) |

## Setup

```bash
# Clone
git clone git@github.com:ORazB/dotfiles.git ~/dotfiles

# Copy configs (or symlink with stow)
cp -r ~/dotfiles/config/* ~/.config/
cp ~/dotfiles/home/.zshrc ~/

# Install dependencies (Arch)
sudo pacman -S hyprland waybar wlogout rofi-lbonn-wayland kitty sddm \
  zsh starship zoxide fastfetch yazi btop grim slurp swappy \
  wl-clipboard jq pipewire wireplumber pavucontrol playerctl \
  brightnessctl cava imagemagick polkit-gnome git neovim \
  nwg-look ttf-firacode-nerd python

# AUR
yay -S matugen swaync hypridle hyprlock hyprpaper swww
```
