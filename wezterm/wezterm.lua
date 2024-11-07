-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe" }
config.window_background_opacity = 0.6
config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Campbell (Gogh)"
config.font_size = 22.0
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })

-- and finally, return the configuration to wezterm
return config
