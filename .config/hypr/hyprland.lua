local terminal = "kitty"
local fileManager = "nautilus"
local menu = "yofi"
local browser = "firefox"

-- Startup --

-- GUI --

    -- General --

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 2,
        float_gaps = 2,
        border_size = 2,

        resize_on_border = true,
        extend_border_grab_area = 15,

        allow_tearing = true,

        layout = "dwindle",

        col = {
          active_border = "#b67362",
          inactive_border = "#7B6A65",  
        },
    },
})

    -- Decorations --

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.2,
        
        },
    },
})

  -- Animations --

hl.config({
    animations = {
        enabled = true,
    },
})

-- Inputs --

hl.config({
    input = {
        kb_layout = "fr",
        repeat_rate = 20,
        repeat_delay = 300,
        sensitivity = 0.5,
        force_no_accel = true,
        follow_mouse = 1,
    },
})

-- Binds --

local mainMod = "SUPER"

hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(firefox))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
