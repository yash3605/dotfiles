-- Window Rules Configuration
-- Define behavior and appearance for specific windows

-- Zen Browser - reduced opacity when inactive
hl.window_rule({
	match = { class = "app.zen_browser.zen" },
	opacity = "0.92 0.85", -- active opacity, inactive opacity
})

-- Zed Editor - reduced opacity when inactive
hl.window_rule({
	match = { class = "dev.zed.Zed" },
	opacity = "0.92 0.85",
})

-- Telegram - reduced opacity when inactive
hl.window_rule({
	match = { class = "org.telegram.desktop" },
	opacity = "0.92 0.85",
})

-- Discord - reduced opacity when inactive
hl.window_rule({
	match = { class = "discord" },
	opacity = "0.92 0.85",
})
