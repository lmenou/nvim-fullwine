local fullwine = require('wines')
local theme = require('theme')

function highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
    vim.cmd(hl)
end

return {
	colorscheme = function ()
		if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
		vim.o.background = "dark"
		vim.o.termguicolors = true
		vim.g.colors_name = "fullwine"

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

		for group, colors in pairs(theme.treesitter) do
			highlight(group, colors)
		end

	end
}

