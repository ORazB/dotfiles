hl.window_rule({ match = { title = "^(Chromium)$" }, tile = true })
hl.window_rule({ match = { title = "^(pavucontrol)$" }, float = true })
hl.window_rule({ match = { title = "^(nm-connection-editor)$" }, float = true })
hl.window_rule({ match = { class = "(firefox)" }, float = true })

-- Dropdown terminal
hl.window_rule({ match = { class = "(dropdown-terminal)" }, workspace = "special:dropdown silent" })
hl.window_rule({ match = { class = "(dropdown-terminal)" }, float = true })
hl.window_rule({ match = { class = "(dropdown-terminal)" }, size = { 960, 648 } })
hl.window_rule({ match = { class = "(dropdown-terminal)" }, center = true })

-- Wlogout blur
hl.layer_rule({ match = { namespace = "(wlogout)" }, blur = true })
hl.layer_rule({ match = { namespace = "(wlogout)" }, ignore_alpha = 0.3 })
