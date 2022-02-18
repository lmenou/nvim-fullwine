local fullwine = require("soft_theme").fullwine
local theme = require("soft_theme").theme

local highlight = require("theme_setter").highlighter

local terminal_highlighter = require("theme_setter").terminal_highlighter

return {
  colorscheme = function()
    if vim.fn.exists "syntax_on" then
      vim.cmd "syntax reset"
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "fullwine_soft"

    terminal_highlighter(fullwine)

    for group, colors in pairs(theme.syntax) do
      highlight(group, colors)
    end

    for group, colors in pairs(theme.lspdiagnostic) do
      highlight(group, colors)
    end

    if vim.g.fullwine_plugin_hi_group == 1 then
      for group, colors in pairs(theme.plugin) do
        highlight(group, colors)
      end
    end
  end,
}

-- lua: et tw=79 ts=2 sts=2 sw=2
