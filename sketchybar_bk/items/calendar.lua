local settings = require("settings")
local colors = require("colors")
local icons = require("icons")

-- Padding item required because of bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

local cal = sbar.add("item", {
  icon = {
    font = { size = 16.0 },
    string = icons.calendar,
    padding_left = 8,
  },
  label = {
    color = colors.white,
    padding_right = 8,
    width = 120,
    align = "right",
    font = { family = settings.font.numbers },
  },
  position = "right",
  update_freq = 30,
  padding_left = 1,
  padding_right = 1,
  background = {
    color = colors.bg1,
    border_color = colors.bg2,
    border_width = 1
  },
  click_script = "open -a 'Calendar'"
})

local scroller = sbar.add("item", {
  label = {
    color = colors.white,
    width = 100,
    align = "right",
    font = { family = settings.font.numbers },
    max_chars = 12,
  },
  position = "right",
  padding_left = 1,
  padding_right = 6,
  background = {
    color = colors.bg1,
    border_color = colors.bg2,
    border_width = 1
  },
  scroll_texts = true,
  scroll_duration = 2000,
  click_script = "open -a 'Calendar'"
})

-- Double border for calendar using a single item bracket
sbar.add("bracket", { cal.name }, {
  background = {
    color = colors.transparent,
    height = 30,
    border_color = colors.grey,
  }
})

-- Padding item required because of bracket
sbar.add("item", { position = "right", width = settings.group_paddings })

cal:subscribe({ "forced", "routine", "system_woke" }, function(env)
  cal:set({label = string.format('%1s | %s', os.date("%d/%m"), os.date("%H:%M"))})
end)

scroller:subscribe({ "forced", "routine", "system_woke" }, function(env)
  scroller:set({label = return_cool_name(os.date("%a"))})
end)

function return_cool_name(date)
  if (date == "Mon") then
    result = "Segundinha da Derrota né pae";
  elseif (date == "Tue") then
    result = "TerceiraFeira, a terça né mano, dia estranho";
  elseif (date == "Wed") then
    result = "É Quarta-Feira meus Bacanos";
  elseif (date == "Thu") then
    result = "Quintaaaa é quase sexta :/";
  elseif (date == "Fri") then
    result = "SEXTOU BB 􁓵􁓵􁓵 IHAAAA!!";
  elseif (date == "Sat") then
    result = "Sabadão da massa bb";
  elseif (date == "Sun") then
    result = "Domingou mano, ultimo dia de descanso pai";
  end

  return result;
end
