<div align="center">
    <h1>I call this, Evernight</h1>
    <img src="https://i.pinimg.com/736x/fc/2a/65/fc2a65afa69b41826b7f7c411e0faa00.jpg" width="250px" height="250px">
    <p>My first Hyprland rice on Arch Linux.</p>
    <p>Customized from community dotfiles with personal tweaks, fixes, and added features.</p>
    <br>
    <img src="https://img.shields.io/badge/status-work%20in%20progress-yellow?style=flat-square">
    <img src="https://img.shields.io/badge/install%20guide-coming%20soon-blue?style=flat-square">
    <img src="https://img.shields.io/badge/screenshots-coming%20soon-purple?style=flat-square">
</div>

## Structure
```
.
└── config/          # ~/.config app configs
    ├── btop/        # System monitor
    ├── fastfetch/   # System info fetch
    ├── fish/        # Shell config (aliases, path, plugins)
    ├── gtk-3.0/     # GTK3 theme settings
    ├── gtk-4.0/     # GTK4 theme settings
    ├── hypr/        # Hyprland WM config, keybinds, scripts
    ├── hyprlock/    # Lock screen
    ├── kitty/       # Terminal emulator
    ├── matugen/     # Material You color generator templates
    ├── nvim/        # Neovim (lazy.nvim)
    ├── rofi/        # App launcher
    ├── sddm/        # Display manager theme
    ├── swappy/      # Screenshot editor
    ├── swaync/      # Notification daemon
    ├── waybar/      # Status bar
    ├── wlogout/     # Logout/power menu
    ├── zed/         # Zed editor
    └── systemd/     # Systemd user services
```

> [!CAUTION]
> This is my first rice. The package list may include unused or redundant entries, and some configs may have leftover clutter from the original dotfiles I based this on. Use your own judgment before installing everything blindly. That said, I am actively working on this and plan to make it completely my own over time.

> [!NOTE]
> Screenshots, workflow overview, and installation guide are coming soon. This rice is still a work in progress.

## Packages
### Core
| Package | Purpose |
|---|---|
| `hyprland` | Wayland compositor |
| `hypridle` | Idle daemon |
| `hyprlock` | Lock screen |
| `waybar` | Status bar |
| `wlogout` | Logout/power menu |
| `rofi` | App launcher |
| `swaync` | Notification daemon |
| `kitty` | Terminal emulator |
| `sddm` | Display manager |

### Shell
| Package | Purpose |
|---|---|
| `fish` | Main shell |
| `tide` | Fish prompt (via fisher) |
| `fastfetch` | System info |

### OSD
| Package | Purpose |
|---|---|
| `swayosd` | On-screen volume/brightness/lock overlay |

### Appearance
| Package | Purpose |
|---|---|
| `matugen` | Material color generation from wallpaper |
| `gtk3` `gtk4` | GTK toolkits |
| `ttf-firacode-nerd` | Monospace font |
| `python` | Required by matugen config generation scripts |

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
| `playerctl` | Media player controls |
| `brightnessctl` | Backlight control |

### Wallpaper
| Package | Purpose |
|---|---|
| `hyprpaper` | Wallpaper daemon (default) |
| `swww` | Wallpaper daemon (with transitions) |
| `imagemagick` | Image processing (blur/crop) |

### Utilities
| Package | Purpose |
|---|---|
| `polkit-kde-agent` | Authentication agent |
| `xdg-desktop-portal-hyprland` | Desktop portal |
| `networkmanager` | Network management |
| `neovim` | Editor |
| `git` | Version control |
