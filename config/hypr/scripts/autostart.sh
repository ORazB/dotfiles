#!/bin/bash
#
# Simple commands are in: ~/.config/hypr/conf/autostart.conf
# This script handles only conditional/complex logic
#

script_dir="$(cd "$(dirname "$0")" && pwd)"

source "${script_dir}/lib/env.sh"
source "${script_dir}/lib/utils.sh"

print_info "Running autostart.sh for complex logic..."

# =====================================================
# GTK Settings
# =====================================================

safe_exec "${HYPR_SCRIPTS}/gtk.sh"

# =====================================================
# Lock Screen / Idle Management
# =====================================================

if command_exists hypridle; then
    print_info "Starting hypridle..."
    hypridle &
else
    print_warning "hypridle not found, skipping idle management"
fi

# =====================================================
# Wallpaper Engine
# =====================================================

safe_exec "${HYPR_SCRIPTS}/init-wallpaper-engine.sh"

# =====================================================
# EWW Widgets (if configured)
# =====================================================

if [[ -x "${HYPR_SCRIPTS}/eww.sh" ]]; then
    safe_exec "${HYPR_SCRIPTS}/eww.sh"
fi

print_success "Autostart.sh completed!"
