-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local fullwine = {
  -- Background
  aged_reds = '#372f2f',
  old_reds = '#644141',
  passed_reds = '#5a3939',

  -- Foreground
  muscadet = '#fcffca',
  sherry = '#d79137',
  white_port = '#efb146',
  tempranillo = '#8c2828',
  verdicchio = '#cfe94e',
  riesling = '#e4db4a',
  malbec = '#f2002c',
  zinfandel = '#ffa9e2',
  syrah_rose = '#b84b4a',
  albarino = '#e3e07f',
  teroldeguo = '#d995fd',
  chardonnay = '#f2d023',

  -- Minerals
  graves = '#737373',
  white_graves = '#858585',
  black_graves = '#323232',
}

-- function fullwine.terminal_color()
--   vim.g.terminal_color_0 = fullwine.bg
--   vim.g.terminal_color_1 = fullwine.red
--   vim.g.terminal_color_2 = fullwine.green
--   vim.g.terminal_color_3 = fullwine.yellow
--   vim.g.terminal_color_4 = fullwine.blue
--   vim.g.terminal_color_5 = fullwine.violet
--   vim.g.terminal_color_6 = fullwine.cyan
--   vim.g.terminal_color_7 = fullwine.bg1
--   vim.g.terminal_color_8 = fullwine.brown
--   vim.g.terminal_color_9 = fullwine.red
--   vim.g.terminal_color_10 = fullwine.green
--   vim.g.terminal_color_11 = fullwine.yellow
--   vim.g.terminal_color_12 = fullwine.blue
--   vim.g.terminal_color_13 = fullwine.violet
--   vim.g.terminal_color_14 = fullwine.cyan
--   vim.g.terminal_color_15 = fullwine.fg
-- end

function fullwine.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function fullwine.load_syntax()
  local syntax = {
    Normal = {fg=fullwine.muscadet,bg=fullwine.aged_reds};
    Terminal = {fg = fullwine.muscadet,bg=fullwine.aged_reds};
    SignColumn = {fg=fullwine.muscadet,bg=fullwine.old_reds};
    -- FoldColumn = {fg=fullwine.medium_green,bg=fullwine.deep_green};
    VertSplit = {fg=fullwine.graves,bg=fullwine.aged_reds};
    -- Folded = {fg=fullwine.medium_green,bg=fullwine.deep_green};
    EndOfBuffer = {fg=fullwine.black_graves,bg=fullwine.none};
    IncSearch = {fg=fullwine.old_reds,bg=fullwine.sherry,style='bold'};
    Search = {fg=fullwine.old_reds,bg=fullwine.sherry,style='bold'};
    ColorColumn = {fg=fullwine.none,bg=fullwine.tempranillo};
    -- Conceal = {fg=fullwine.medium_green,bg=fullwine.none};
    Cursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    vCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    iCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    lCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    CursorIM = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    CursorColumn = {fg=fullwine.none,bg=fullwine.old_reds};
    CursorLine = {fg=fullwine.none,bg=fullwine.old_reds};
    LineNr = {fg=fullwine.graves};
    qfLineNr = {fg=fullwine.graves};
    CursorLineNr = {fg=fullwine.sherry,bg=fullwine.old_reds};
    -- DiffAdd = {fg=fullwine.black,bg=fullwine.dark_green};
    -- DiffChange = {fg=fullwine.black,bg=fullwine.yellow};
    -- DiffDelete = {fg=fullwine.black,bg=fullwine.red};
    -- DiffText = {fg=fullwine.black,bg=fullwine.fg};
    Directory = {fg=fullwine.albarino,bg=fullwine.none,style='bold'};
    -- ErrorMsg = {fg=fullwine.pale_garnet,bg=fullwine.none,style='bold'};
    -- WarningMsg = {fg=fullwine.deep_yellow,bg=fullwine.none,style='bold'};
    -- ModeMsg = {fg=fullwine.medium_amber,bg=fullwine.none,style='bold'};
    -- MatchParen = {fg=fullwine.light_green,bg=fullwine.light_grey};
    NonText = {fg=fullwine.white_graves};
    Whitespace = {fg=fullwine.graves};
    -- SpecialKey = {fg=fullwine.medium_grey};
    -- Pmenu = {fg=fullwine.pale_yellow,bg=fullwine.light_grey};
    -- PmenuSel = {fg=fullwine.light_grey,bg=fullwine.deep_amber,style='bold'};
    -- PmenuSbar = {fg=fullwine.none,bg=fullwine.deep_grey};
    -- PmenuThumb = {fg=fullwine.medium_amber,bg=fullwine.pale_amber};
    -- WildMenu = {fg=fullwine.pale_yellow,bg=fullwine.medium_grey};
    -- Question = {fg=fullwine.light_green};
    -- NormalFloat = {fg=fullwine.pale_yellow,bg=fullwine.medium_grey};
    Tabline = {fg=fullwine.white_graves,bg=fullwine.old_reds};
    TabLineFill = {bg=fullwine.old_reds};
    TabLineSel = {fg=fullwine.white_port,bg=fullwine.old_reds};
    StatusLine = {fg=fullwine.muscadet,bg=fullwine.passed_reds,style='italic'};
    StatusLineNC = {fg=fullwine.graves,bg=fullwine.passed_reds,style=fullwine.none};
    -- SpellBad = {fg=fullwine.redwine,bg=fullwine.none,style='undercurl'};
    -- SpellCap = {fg=fullwine.medium_amber,bg=fullwine.none,style='undercurl'};
    -- SpellLocal = {fg=fullwine.pale_amber,bg=fullwine.none,style='undercurl'};
    -- SpellRare = {fg=fullwine.pale_purple,bg=fullwine.none,style = 'undercurl'};
    Visual = {fg=fullwine.none,bg=fullwine.syrah_rose};
    VisualNOS = {fg=fullwine.none,bg=fullwine.syrah_rose};
    QuickFixLine = {fg=fullwine.aged_reds,bg=fullwine.white_port,style='bold'};
    -- debugPC = {fg=fullwine.medium_amber};
    -- debugBreakpoint = {fg=fullwine.deep_yellow,bg=fullwine.pale_ruby};

    Boolean = {fg=fullwine.teroldeguo};
    Number = {fg=fullwine.teroldeguo};
    Float = {fg=fullwine.teroldeguo};
    PreProc = {fg=fullwine.teroldeguo};
    PreCondit = {fg=fullwine.teroldeguo};
    Include = {fg=fullwine.malbec};
    Define = {fg=fullwine.teroldeguo};
    Conditional = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    Repeat = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    Keyword = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    -- Typedef = {fg=fullwine.pale_ruby};
    -- Exception = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    -- Statement = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    Error = {fg=fullwine.muscadet,bg=fullwine.malbec,style='bold'};
    -- StorageClass = {fg=fullwine.medium_amber};
    -- Tag = {fg=fullwine.medium_amber};
    -- Label = {fg=fullwine.medium_amber};
    -- Structure = {fg=fullwine.medium_amber};
    -- Operator = {fg=fullwine.redwine};
    -- Title = {fg=fullwine.pale_amber,style='bold'};
    -- Special = {fg=fullwine.light_green};
    -- SpecialChar = {fg=fullwine.light_green};
    Type = {fg=fullwine.chardonnay};
    Function = {fg=fullwine.white_port,bg=fullwine.none,style='bold'};
    String = {fg=fullwine.verdicchio};
    Character = {fg=fullwine.verdicchio};
    Constant = {fg=fullwine.teroldeguo};
    Macro = {fg=fullwine.teroldeguo};
    Identifier = {fg=fullwine.riesling};
    Comment = {fg=fullwine.white_graves};
    SpecialComment = {fg=fullwine.white_graves};
    Todo = {fg=fullwine.muscadet,bg=fullwine.none,style='bold'};
    Delimiter = {fg=fullwine.sherry};
    Ignore = {fg=fullwine.white_graves};
    Underlined = {fg=fullwine.none,style='underline'};
  }
  return syntax
end

function fullwine.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'fullwine'
  local syntax = fullwine.load_syntax()
  for group,colors in pairs(syntax) do
    fullwine.highlight(group,colors)
  end
end

fullwine.colorscheme()

return fullwine
