local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.automatically_reload_config = true
config.default_prog = { "wsl", "~" }

config.audible_bell = "Disabled"

config.color_scheme = "Catppuccin Mocha"

-- Min theme for wezterm
-- config.color_scheme = "Min"
config.color_schemes = {
	["Min"] = {
		foreground = "#c0c0c0",
		background = "#212121",

		cursor_bg = "#e0e0e0",
		cursor_fg = "#212121",
		cursor_border = "#e0e0e0",

		selection_fg = "#212121",
		selection_bg = "#363636",

		scrollbar_thumb = "#666",
		split = "#363636",

		ansi = {
			"#1a1a1a",
			"#ff7a84",
			"#67ab91",
			"#ffab70",
			"#79b8ff",
			"#b392f0",
			"#7cafc2",
			"#e0e0e0",
		},
		brights = {
			"#666",
			"#ff7a84",
			"#67ab91",
			"#ffab70",
			"#79b8ff",
			"#b392f0",
			"#7cafc2",
			"#fff",
		},

		compose_cursor = "#ffab70",

		copy_mode_active_highlight_bg = { Color = "#363636" },
		copy_mode_active_highlight_fg = { Color = "#fff" },
		copy_mode_inactive_highlight_bg = { Color = "#666" },
		copy_mode_inactive_highlight_fg = { Color = "#e0e0e0" },

		quick_select_label_bg = { Color = "#79b8ff" },
		quick_select_label_fg = { Color = "#212121" },
		quick_select_match_fg = { Color = "#e0e0e0" },
	},
}
config.enable_tab_bar = false
config.default_cursor_style = "SteadyBlock"

config.adjust_window_size_when_changing_font_size = false
config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font", weight = "Medium" },
	{ family = "MesloLGL Nerd Font", weight = "DemiBold" },
})
config.font_size = 12
config.line_height = 1.3

config.initial_cols = 142
config.initial_rows = 28

config.window_close_confirmation = "NeverPrompt"
config.window_padding = {
	top = 5,
	right = 5,
	bottom = 5,
	left = 5,
}
config.window_background_opacity = 0.6
config.win32_system_backdrop = "Acrylic"
config.window_decorations = "NONE"

return config
