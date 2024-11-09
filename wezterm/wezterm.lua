-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.window_background_opacity = 0.6
-- config.color_scheme = "Kanagawa (Gogh)"
config.color_scheme = "Catppuccin Mocha (Gogh)"
-- config.color_scheme = "Campbell (Gogh)"
config.font_size = 12.0
-- config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- and finally, return the configuration to wezterm
return config
