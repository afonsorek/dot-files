local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
	height = 46,
	blur_radius = 10,
	color = colors.bar.bg,
	border_color = "glow(0xFF6FCB9F)",
	border_width = 2,
	padding_right = 6,
	padding_left = 6,
	display = main,
	topmost = false,
	shadow = true,
	margin = 40,
	y_offset = 15,
	corner_radius = 10,
})
