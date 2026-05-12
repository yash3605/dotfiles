-- Gesture Configuration
-- Touchpad gesture definitions
-- Reference: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/

-- Three-finger vertical swipe - switch workspaces
hl.gesture({
    fingers = 3,
    direction = "vertical",
    action = "workspace"
})

-- Three-finger horizontal swipe - scroll/move
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "scroll_move"
})
