-- local colors = require("colors")
-- local settings = require("settings")

-- local front_app = sbar.add("item", "front_app", {
--   display = "active",
--   icon = {
--     font = { size = 16.0 },
--     -- string = icons.apple,
--     padding_right = 6,
--     padding_left = 6,
--   },
--   label = {
--     font = {
--       style = settings.font.style_map["Black"],
--       size = 12.0,
--     },
--   },
--   background = {
--     color = colors.transparent,
--     border_color = colors.transparent,
--     border_width = 0
--   },
--   padding_left = 1,
--   padding_right = 1,
--   updates = true,
-- })

-- -- icon = {
-- --     font = { family = settings.font.numbers },
-- --     string = i,
-- --     padding_left = 15,
-- --     padding_right = 8,
-- --     color = colors.white,
-- --     highlight_color = colors.red,
-- --   },
-- --   label = {
-- --     padding_right = 20,
-- --     color = colors.white,
-- --     highlight_color = colors.white,
-- --     font = "sketchybar-app-font:Regular:16.0",
-- --     y_offset = -1,
-- --   },
-- --   padding_right = 1,
-- --   padding_left = 1,
-- --   background = {
-- --     color = colors.bg1,
-- --     border_width = 1,
-- --     height = 26,
-- --     border_color = colors.black,
-- --   }

-- front_app:subscribe("front_app_switched", function(env)
--   front_app:set({ label = { string = env.INFO } })
-- end)

-- front_app:subscribe("mouse.clicked", function(env)
--   sbar.trigger("swap_menus_and_spaces")
-- end)