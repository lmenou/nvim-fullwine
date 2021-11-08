local fullwine = require('soft_theme').fullwine
local theme = require('soft_theme').theme

local highlight = require('theme_setter').highlighter

return {
  colorscheme = function ()
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "fullwine_soft"

    vim.g.terminal_color_0 = fullwine.black_graves
    vim.g.terminal_color_1 = fullwine.malbec
    vim.g.terminal_color_2 = fullwine.verdicchio
    vim.g.terminal_color_3 = fullwine.riesling
    vim.g.terminal_color_4 = fullwine.white_port
    vim.g.terminal_color_5 = fullwine.teroldeguo
    vim.g.terminal_color_6 = fullwine.nebiolo
    vim.g.terminal_color_7 = fullwine.muscadet
    vim.g.terminal_color_8 = fullwine.white_graves
    vim.g.terminal_color_9 = fullwine.malbec
    vim.g.terminal_color_10 = fullwine.albarino
    vim.g.terminal_color_11 = fullwine.sauternes
    vim.g.terminal_color_12 = fullwine.sherry
    vim.g.terminal_color_13 = fullwine.zinfandel
    vim.g.terminal_color_14 = fullwine.syrah_rose
    vim.g.terminal_color_15 = fullwine.muscadet

    for group, colors in pairs(theme.syntax) do
      highlight(group, colors)
    end

    for group, colors in pairs(theme.lspdiagnostic) do
      highlight(group, colors)
    end

    if vim.g.fullwine_treesitter_support == 1 or vim.g.fullwine_treesitter_support == nil then
      for group, colors in pairs(theme.treesitter) do
        highlight(group, colors)
      end
    end

    if vim.g.fullwine_plugin_hi_group == 1 then
      for group, colors in pairs(theme.plugin) do
        highlight(group, colors)
      end
    end

  end
}

-- lua: et tw=79 ts=2 sts=2 sw=2
