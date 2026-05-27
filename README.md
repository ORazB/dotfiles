# dotfiles

My personal dotfiles managed with a simple copy-based workflow.

## Structure

```
.
├── config/          # ~/.config app configs
│   ├── btop/
│   ├── fastfetch/
│   ├── gtk-3.0/
│   ├── gtk-4.0/
│   ├── hypr/        # Hyprland WM config + scripts
│   ├── kitty/
│   ├── matugen/
│   ├── nvim/        # Neovim config (lazy.nvim)
│   ├── rofi/
│   ├── sddm/
│   ├── starship/
│   ├── swappy/
│   ├── swaync/
│   ├── waybar/
│   ├── wlogout/
│   ├── yay/
│   ├── yazi/
│   └── zsh/
└── home/            # ~/ dotfiles
    └── .zshrc
```

## Setup

```bash
git clone git@github.com:ORazB/dotfiles.git ~/dotfiles
cp -r ~/dotfiles/config/* ~/.config/
cp ~/dotfiles/home/.zshrc ~/
```

## Syncing

```bash
# copy changes from ~/.config into the repo
cp -r ~/.config/btop ~/dotfiles/config/
# ... repeat for each changed app

# then commit and push
cd ~/dotfiles
git add -A
git commit -m "chore: ..."
git push
```
