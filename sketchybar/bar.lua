local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
	position = 'bottom',
	height = 40,
	image = {
      drawing = true,
      string = "~/.config/sketchybar/media/bar.png",
      scale = 1.0,
	},
	border_color = 0x00000000,
	color = 0x00000000,
	border_width = 0,
	padding_right = 0, --6
	padding_left = 0, --6
	display = main,
	topmost = false,
	shadow = true,
	margin = 0, --20
	y_offset = 0, --15
	corner_radius = 0,
})
