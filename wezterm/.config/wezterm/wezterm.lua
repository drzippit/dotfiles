local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Catppuccin Macchiato'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.7
config.macos_window_background_blur = 40
config.font = wezterm.font 'Comic Code'
config.font_size = 14.0

return config
