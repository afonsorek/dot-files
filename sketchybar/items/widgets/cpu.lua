local icons = require("icons")
local colors = require("colors")
local settings = require("settings")

-- Execute the event provider binary which provides the event "cpu_update" for
-- the cpu load data, which is fired every 2.0 seconds.
sbar.exec("killall cpu_load >/dev/null; $CONFIG_DIR/helpers/event_providers/cpu_load/bin/cpu_load cpu_update 2.0")

local cpu = sbar.add("graph", "widgets.cpu" , 42, {
  position = "right",
  graph = { 
    color = colors.blue,
    border_color = colors.transparent,
  },
  background = {
      color = colors.transparent,
      image = {
      drawing = true,
      string = "~/.config/sketchybar/media/item.png",
      border_color = 0x00000000,
      corner_radius = 0,
      scale = 1.0,
      padding_left = 0,
      height = 20,
    },
    border_color = colors.transparent,
  },
  icon = { 
    string = icons.cpu,
    border_color = colors.transparent,
   },
  label = {
    string = "cpu ??%",
    font = {
      family = settings.font.numbers,
      style = settings.font.style_map["Bold"],
      size = 9.0,
      border_color = colors.transparent,
    },
    align = "right",
    padding_right = 0,
    width = 0,
    y_offset = 4,
    border_color = colors.transparent,
  },
  padding_right = settings.paddings + 6,
  border_color = colors.transparent,
})

cpu:subscribe("cpu_update", function(env)
  -- Also available: env.user_load, env.sys_load
  local load = tonumber(env.total_load)
  cpu:push({ load / 100. })

  local color = colors.blue
  if load > 30 then
    if load < 60 then
      color = colors.yellow
    elseif load < 80 then
      color = colors.orange
    else
      color = colors.red
    end
  end

  cpu:set({
    graph = { color = color },
    label = "cpu " .. env.total_load .. "%",
  })
end)

cpu:subscribe("mouse.clicked", function(env)
  sbar.exec("open -a 'Activity Monitor'")
end)

-- Background around the cpu item
sbar.add("bracket", "widgets.cpu.bracket", { cpu.name }, {
  background = { color = colors.transparent },
  border_color = colors.transparent,
})

-- Background around the cpu item
sbar.add("item", "widgets.cpu.padding", {
  position = "right",
  width = 10,
  border_color = colors.transparent,
})
