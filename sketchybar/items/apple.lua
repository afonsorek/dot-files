local colors = require("colors")
local icons = require("icons")
local settings = require("settings")

-- Padding item required because of bracket
sbar.add("item", { width = 5 })

local apple = sbar.add("item", "apple", {
  icon = {
    font = { size = 16.0 },
    string = icons.apple,
    padding_right = 0,
    padding_left = 12,
    border_color = 0x00000000,
  },
  label = { 
    drawing = false,
    border_color = 0x00000000,
    color = 0x00000000,
  },
  background = {
    color = 0x00000000,
    image = {
      drawing = true,
      string = "~/.config/sketchybar/media/button.png",
      border_color = 0x00000000,
      corner_radius = 0,
      scale = 1.0,
      padding_left = 0,
      height = 20,
    },
    drawing = true,
    height = 20,
    corner_radius = 0,
    border_width = 0,
    border_color = 0x00000000, -- Totalmente transparente
  },
  width = -1,
  padding_left = 1,
  padding_right = 1,
  click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s 0"
})

-- Padding item required because of bracket
sbar.add("item", { width = 7 })