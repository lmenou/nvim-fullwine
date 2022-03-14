-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local setter = require "theme_setter"

local fullwine = setter.colors

-- Hard Background
fullwine.aged_reds = "#292323"

local theme = setter.setter(fullwine)

return {
  theme = theme,
  fullwine = fullwine,
}
