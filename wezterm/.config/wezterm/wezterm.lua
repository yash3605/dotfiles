local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	font = wezterm.font("AnonymicePro Nerd Font Mono"),
	font_size = 22,
	color_scheme = "Catppuccin Mocha (Gogh)",
	window_background_opacity = 0.7,

	keys = {
		-- {
		-- 	key = "w",
		-- 	mods = "CTRL | SHIFT",
		-- 	action = wezterm.action.CloseCurrentTab({ confirm = false }),
		-- },
		{
			key = "_",
			mods = "CTRL | SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
	},

	skip_close_confirmation_for_processes_named = {
		"bash",
		"sh",
		"zsh",
		"fish",
		"tmux",
		"nu",
		"cmd.exe",
		"pwsh.exe",
		"powershell.exe",
	},
}

return config
