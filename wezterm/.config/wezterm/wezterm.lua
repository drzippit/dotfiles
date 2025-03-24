local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Use the defaults as a base
config.hyperlink_rules = wezterm.default_hyperlink_rules()

-- Make IP addresses with port clickable (e.g., 127.0.0.1:5053)
table.insert(config.hyperlink_rules, {
	regex = [[\b(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}):(\d+)\b]],
	format = "http://$1:$2",
})

-- config.color_scheme = "Catppuccin Macchiato"
config.color_scheme = "rose-pine"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.7
config.macos_window_background_blur = 40
config.font = wezterm.font("Comic Code")
config.font_size = 14.0
config.window_decorations = "RESIZE"

return config
