-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local setter = require("theme_setter")

local fullwine = {
  -- Background
  aged_reds = '#372f2f',
  old_reds = '#644141',
  passed_reds = '#5a3939',
  wrong_reds = '#7e4138',
  discus = '#cec7d4',

  -- Foreground
  muscadet = '#fcffca',
  sherry = '#f3d171',
  white_port ='#ffa500',
  tempranillo = '#8c2828',
  verdicchio = '#cfe94e',
  riesling = '#e4db4a',
  malbec = '#f2002c',
  zinfandel = '#ffa9e2',
  syrah_rose = '#b84b4a',
  albarino = '#e3e07f',
  teroldeguo = '#e378a2 ',
  pinot_noir = '#e54772 ',
  mourvedre = '#ff9494',
  grenache = '#79a48f',
  sauternes = '#ffee19',
  nebiolo = '#a92900',

  -- Minerals
  graves = '#737373',
  white_graves = '#5c5c5c',
  black_graves = '#323232',
}

local theme = setter.setter(fullwine)

return {
  theme = theme,
  fullwine = fullwine,
}
-- lua: et tw=79 ts=2 sts=2 sw=2
