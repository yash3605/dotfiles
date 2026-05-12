-- Startup and Autostart Commands
-- Programs and services to launch on Hyprland startup

local home = os.getenv("HOME")

hl.on("hyprland.start", function()
    -- Status bar and display management
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    
    -- Custom wallpaper management
    hl.exec_cmd(home .. "/.config/hypr/scripts/wallpaper.sh")
    
    -- Notification daemon
    hl.exec_cmd("dunst")
    
    -- System utilities
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("nm-applet --indicator")
    
    -- Clipboard management with delays for stability
    hl.exec_cmd("sleep 2 && wl-paste --type text --watch cliphist store")
    hl.exec_cmd("sleep 2 && wl-paste --type image --watch cliphist store")
    
    -- Custom system scripts
    hl.exec_cmd(home .. "/.config/hypr/scripts/battery.sh")
    
    -- Music daemon
    hl.exec_cmd("systemctl --user start mpd")
end)
