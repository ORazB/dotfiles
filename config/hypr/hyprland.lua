-- Load theme colors from matugen
pcall(function()
    local home = os.getenv("HOME")
    if home then
        dofile(home .. "/.cache/colors-hyprland.lua")
    end
end)

-- Apply color-dependent config
hl.config({
    general = {
        col = {
            active_border = primary or 0xff6750a4,
            inactive_border = 0xffffffff,
        },
    },
})

-- Load config modules (each in its own scope)
require("defaults")
require("monitor")
require("autostart")
require("environment")
require("keyboard")
require("window")
require("decoration")
require("layout")
require("misc")
require("keybinding")
require("windowrule")
require("animation")
require("local")
