-- Default Applications (variables)
local TERMINAL = "kitty"
local BROWSER = "zen-browser"
local FILEMANAGER = "nautilus"
local EDITOR = "mousepad"
local NETWORKMANAGER = "nm-connection-editor"
local SOFTWARE = "alacritty -e pacseek"
local SCREENSHOT_EDITOR = "swappy"
local WALLPAPER_ENGINE = "awww"
local BLUR = "50x30"

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 0,
        col = {
            inactive_border = 0xffffffff,
        },
        layout = "dwindle",
    },
})

hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
