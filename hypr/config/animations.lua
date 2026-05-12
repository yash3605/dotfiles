---@diagnostic disable: undefined-global
-- Animation Configuration
-- Bezier curves and animation definitions for smooth visual effects

-- Custom bezier curves for easing functions
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("smoothOut", { type = "bezier", points = { { 0.5, 0 }, { 0.99, 0.99 } } })
hl.curve("smoothIn", { type = "bezier", points = { { 0.5, -0.5 }, { 0.68, 1.5 } } })
hl.curve("cinematic", { type = "bezier", points = { { 0.25, 0.46 }, { 0.45, 0.94 } } })
hl.curve("bounce", { type = "bezier", points = { { 0.68, -0.55 }, { 0.265, 1.55 } } })
hl.curve("expoOut", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("elasticInOut", { type = "bezier", points = { { 0.68, -0.55 }, { 0.265, 1.55 } } })
hl.curve("customBounce", { type = "bezier", points = { { 0.68, -0.55 }, { 0.265, 1.55 } } })
hl.curve("ultraSmooth", { type = "bezier", points = { { 0.43, 0.13 }, { 0.23, 0.96 } } })
hl.curve("springyOvershoot", { type = "bezier", points = { { 0.15, 0.85 }, { 0.25, 1.15 } } })

-- Window animations - smooth and bouncy
hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "overshot", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "smoothOut", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 6, bezier = "customBounce", style = "slide" })

-- Border and angle animations - constant visual feedback
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "ultraSmooth" })
hl.animation({ leaf = "borderangle", enabled = false })

-- Fade animations - smooth transitions
hl.animation({ leaf = "fade", enabled = true, speed = 6, bezier = "cinematic" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 6, bezier = "cinematic" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 5, bezier = "smoothOut" })

-- Workspace transitions - premium feel
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 6, bezier = "springyOvershoot", style = "slidevert" })

-- Layer animations for popups and notifications
hl.animation({ leaf = "layers", enabled = true, speed = 5, bezier = "cinematic" })
