#!/bin/bash

if [ -f "$HOME/.cache/waybar-disabled" ]; then
    pkill waybar
    pkill cava
    exit 1
fi

pkill waybar
pkill cava
sleep 0.2

CHASSIS_TYPE=$(cat /sys/class/dmi/id/chassis_type 2>/dev/null)
HAS_BATTERY=false
[ "$CHASSIS_TYPE" = "10" ] && HAS_BATTERY=true

CONFIG_FILE="$HOME/.config/waybar/config"
TMP_CONFIG="/tmp/waybar-config-temp.json"
STYLE_FILE="$HOME/.config/waybar/style.css"

python3 <<EOF > "$TMP_CONFIG"
import json, re, os, sys

with open(os.path.expanduser("$CONFIG_FILE")) as f:
    raw = f.read()

raw = re.sub(r'^\s*//.*', '', raw, flags=re.MULTILINE)
raw = re.sub(r',\s*([\]}])', r'\1', raw)
config = json.loads(raw)

has_battery = ${HAS_BATTERY^}

if has_battery:
    config["modules-right"] = [m for m in config["modules-right"] if m not in ("cpu", "memory")]
else:
    config["modules-center"] = [m for m in config["modules-center"] if m not in ("battery", "backlight")]

json.dump(config, sys.stdout, indent=4)
EOF

exec waybar -c "$TMP_CONFIG" -s "$STYLE_FILE"
