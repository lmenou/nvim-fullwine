-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local setter = require("theme_setter")

local fullwine = setter.colors

-- Soft background
fullwine.aged_reds = '#443939'

local theme = setter.setter(fullwine)

return {
  theme = theme,
  fullwine = fullwine,
}
-- lua: et tw=79 ts=2 sts=2 sw=2
