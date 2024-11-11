-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.window_background_opacity = 0.9
-- config.color_scheme = "Kanagawa (Gogh)"
config.color_scheme = "Catppuccin Mocha (Gogh)"
-- config.color_scheme = "Campbell (Gogh)"
config.font_size = 16.0
-- config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "NONE | RESIZE"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false })

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = tab.active_pane.title

	if tab.tab_title and #tab.tab_title > 0 then
		title = tab.tab_title
	end
	if tab.is_active then
		return {
			{ Background = { Color = "#1E1E2E" } },
			{ Foreground = { Color = "#bac2de" } },
			{ Text = title },
		}
	else
		return {
			{ Background = { Color = "#11111b" } },
			{ Foreground = { Color = "#313244" } },
			{ Text = title },
		}
	end
end)

-- and finally, return the configuration to wezterm
return config
