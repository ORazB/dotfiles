local mainMod = "SUPER"
local home = os.getenv("HOME")
local TERMINAL = "kitty"
local BROWSER = "zen-browser"
local FILEMANAGER = "nautilus"
local NETWORKMANAGER = "nm-connection-editor"
local SOFTWARE = "alacritty -e pacseek"
local SCREENSHOT_EDITOR = "swappy"

-- Applications
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(TERMINAL))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(BROWSER))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FILEMANAGER))

-- Windows
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Switch workspaces with mainMod + [0-9]
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
end

-- Move active window to a workspace
for i = 1, 9 do
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Monitors
hl.bind(mainMod .. " + ALT + left", hl.dsp.focus({ monitor = "l" }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.focus({ monitor = "r" }))
hl.bind(mainMod .. " + ALT + SHIFT + left", hl.dsp.window.move({ monitor = -1 }))
hl.bind(mainMod .. " + ALT + SHIFT + right", hl.dsp.window.move({ monitor = 1 }))

-- Special Workspaces
hl.bind(mainMod .. " + grave", hl.dsp.workspace.toggle_special("dropdown"))
hl.bind(mainMod .. " + SHIFT + grave", hl.dsp.window.move({ workspace = "special:dropdown" }))

-- Actions
hl.bind("ALT + C", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/screenshot_claude.sh"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("kitty --listen-on unix:/tmp/kitty-claude -e claude"))
hl.bind("PRINT", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/screenshot.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/screenshot.sh area"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/wallpaper.sh scheme"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/wallpaper.sh select"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(home .. "/.config/waybar/launch.sh"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/cliphist.sh"))
hl.bind("XF86Tools", hl.dsp.exec_cmd("alacritty --class dotfiles-floating -e " .. home .. "/.config/hypr/settings/settings.sh"))
hl.bind(mainMod .. " + CTRL + Q", hl.dsp.exec_cmd("wlogout -b 6 -c 16 -r 0 -T 450 -B 450 -L 200 -R 200"))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("rofi -show drun -replace -i"))

-- Fn keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness +5"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness -5"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("qalculate-gtk"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("XF86ScreenSaver", hl.dsp.exec_cmd("hyprlock"))

-- Passthrough submap
hl.bind(mainMod .. " + P", hl.dsp.submap("passthru"))
hl.define_submap("passthru", function()
    hl.bind("SUPER + Escape", hl.dsp.submap("reset"))
end)
