-- General Configuration
-- Window manager settings, decorations, colors, and visual effects

hl.config({
	-- General window manager settings
	general = {
		gaps_in = 5,
		gaps_out = 12,
		border_size = 1,
		col = {
			active_border = { colors = { "rgba(7aa2f7ff)", "rgba(bb9af7ff)", "rgba(7dcfffff)" }, angle = 45 },
			inactive_border = "rgba(ffffff10)",
		},
		layout = "dwindle",
		resize_on_border = true,
	},

	-- Dwindle tiling layout settings
	dwindle = {
		preserve_split = true,
	},

	-- Window decoration settings (shadows, blur, rounding)
	decoration = {
		rounding = 12,
		active_opacity = 1.0,
		inactive_opacity = 0.88,
		fullscreen_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 30,
			render_power = 4,
			color = "rgba(0a0a0fdd)",
			offset = { 0, 8 },
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 3,
			ignore_opacity = true,
			new_optimizations = true,
			xray = true,
			popups = true,
		},
	},

	-- Miscellaneous settings
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		animate_manual_resizes = true,
		animate_mouse_windowdragging = true,
	},
})
