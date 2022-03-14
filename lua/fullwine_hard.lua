local fullwine = require("hard_theme").fullwine
local theme = require("hard_theme").theme

local highlight = require("theme_setter").highlighter

local terminal_highlighter = require("theme_setter").terminal_highlighter

return {
  colorscheme = function()
    if vim.fn.exists "syntax_on" then
      vim.cmd "syntax reset"
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "fullwine_hard"

    terminal_highlighter(fullwine)

    for group, colors in pairs(theme.syntax) do
      highlight(group, colors)
    end

    if vim.g.fullwine_plugin_hi_group == 1 then
      for group, colors in pairs(theme.plugin) do
        highlight(group, colors)
      end
    end
  end,
}
