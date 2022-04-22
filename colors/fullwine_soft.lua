-- Theme: fullwine
-- Author: lmenou
-- License: Apache 2.0

local fullwine = require("fullwine.base").fullwine
local syntax = require("fullwine.base").syntax

if vim.fn.exists "syntax_on" then
  vim.cmd "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "fullwine_soft"

-- Soft background
fullwine.aged_reds = "#443939"

vim.g.terminal_color_0 = fullwine.aged_reds
vim.g.terminal_color_1 = fullwine.tempranillo
vim.g.terminal_color_2 = fullwine.riesling
vim.g.terminal_color_3 = fullwine.albarino
vim.g.terminal_color_4 = fullwine.discus
vim.g.terminal_color_5 = fullwine.teroldeguo
vim.g.terminal_color_6 = fullwine.white_port
vim.g.terminal_color_7 = fullwine.graves
vim.g.terminal_color_8 = fullwine.white_graves
vim.g.terminal_color_9 = fullwine.malbec
vim.g.terminal_color_10 = fullwine.verdicchio
vim.g.terminal_color_11 = fullwine.sauternes
vim.g.terminal_color_12 = fullwine.grenache
vim.g.terminal_color_13 = fullwine.zinfandel
vim.g.terminal_color_14 = fullwine.sherry
vim.g.terminal_color_15 = fullwine.muscadet

for group, colors in pairs(syntax) do
  require("fullwine").highlighter(group, colors)
end

if vim.g.fullwine_plugin_hi_group then
  local plugin = require("fullwine.base").plugin
  for group, colors in pairs(plugin) do
    require("fullwine").highlighter(group, colors)
  end
end
