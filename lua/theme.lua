-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local setter = require "theme_setter"

local fullwine = setter.colors

-- Normal background
fullwine.aged_reds = "#372f2f"

local theme = setter.setter(fullwine)

return {
  theme = theme,
  fullwine = fullwine,
}
