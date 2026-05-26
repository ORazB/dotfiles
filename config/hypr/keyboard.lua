hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "grp:alt_shift_toggle",
        kb_rules = "",
        repeat_rate = 50,
        repeat_delay = 300,
        numlock_by_default = true,
        left_handed = false,
        follow_mouse = true,
        float_switch_override_focus = false,
        sensitivity = 0.5,
        touchpad = {
            disable_while_typing = true,
            natural_scroll = true,
            clickfinger_behavior = false,
            middle_button_emulation = true,
            tap_to_click = true,
            drag_lock = false,
        },
    },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
