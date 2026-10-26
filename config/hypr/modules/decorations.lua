-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
  general = {
    gaps_in = 0,
    gaps_out = 0,

    border_size = 1,

    col = {
      active_border = {
        colors = {
          "rgba(ffb7c5ff)", -- Sakura pink
          "rgba(ff69b4ff)", -- Hot pink
        },
        angle = 45,
      },
      inactive_border = "rgba(831843aa)", -- Dark pink
    },                                    -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
    resize_on_border = true,

    -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
    allow_tearing = false,
  },

  decoration = {
    rounding = 0,
    rounding_power = 0,

    -- Change transparency of focused and unfocused windows
    active_opacity = 1.0,
    inactive_opacity = 0.9,

    shadow = {
      enabled = true,
      range = 7,
      render_power = 4,
      color = 0xff9eb5aa,
    },

    blur = {
      enabled = true,
      size = 3,
      passes = 1,
      vibrancy = 0.1696,
    },
  },

  animations = {
    enabled = true,
  },
})
