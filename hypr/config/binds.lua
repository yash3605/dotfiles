-- Keybinding Configuration
-- All keyboard shortcuts and input handling

-- Application variables
local terminal = "ghostty"
local file_manager = "nautilus"
local browser = "flatpak run app.zen_browser.zen"
local menu = "rofi -show drun"

local workspaces = 5

--  ==================== APPLICATION LAUNCHERS ====================
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + Space", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + E", hl.dsp.exec_cmd(file_manager))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + X", hl.dsp.exec_cmd("Telegram"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zed"))
hl.bind("SUPER + W", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/wallpaper.sh"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("rmpc"))

-- ==================== WINDOW MANAGEMENT ====================
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + F", function()
	-- Toggle window floating state and center it.
	hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
	hl.dispatch(hl.dsp.window.center())
end)

-- ==================== FOCUS NAVIGATION ====================
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- ==================== WINDOW MOVING ====================
hl.bind("SUPER + CTRL + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ direction = "down" }))

-- ==================== WORKSPACE NAVIGATION ====================
for i = 1, workspaces do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
	hl.bind("SUPER + CTRL + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- ==================== MEDIA KEYS ====================
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set  +10%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set  10%-"), { locked = true, repeating = true })

-- ==================== CLIPBOARD ====================
hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

-- ==================== SCREENSHOT ====================
hl.bind(
	"SUPER + SHIFT + S",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +%Y%m%d-%H%M%S).png && notify-send "Screenshot" "Saved to Pictures/Screenshots"'
	)
)
hl.bind(
	"SUPER + CTRL + S",
	hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy && notify-send "Screenshot" "Copied to clipboard"')
)

-- ==================== SYSTEM ====================
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("systemctl poweroff"))
