#!/bin/zsh
# =====================================================
# Shell Aliases
# =====================================================

# System
alias update='sudo pacman -Syu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq) 2>/dev/null || echo "No orphans to remove"'

# ls with colors
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'

# grep with colors
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph'

# Hyprland
alias hypr-reload='hyprctl reload'
alias hypr-restart='killall waybar && waybar &'

# Docker-compose
alias dcup='docker-compose up -d --build'
alias dcdn='docker-compose down'
alias dclg='docker-compose logs -f'

# nvim
alias v='nvim'

