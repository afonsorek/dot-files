local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
	height = 46,
	blur_radius = 10,
	image = {
      drawing = true,
      string = "~/.config/sketchybar/media/bar.png",
      border_color = 0x00000000,
      corner_radius = 0,
      scale = 0.8,
      padding_left = 0,
      height = 30,
	  y_offset = 15
	},
	border_color = 0x00000000,
	color = 0x00000000,
	border_width = 0,
	padding_right = 6,
	padding_left = 6,
	display = main,
	topmost = false,
	shadow = true,
	margin = 40,
	y_offset = 15,
	corner_radius = 0,
})
