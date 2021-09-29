-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local fullwine = {
  -- Background
  aged_reds = '#372f2f',
  old_reds = '#644141',
  passed_reds = '#5a3939',
  wrong_reds = '#7e4138',

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
  sauternes = '#ffee19',
  nebiolo = '#a92900',

  -- Minerals
  graves = '#737373',
  white_graves = '#858585',
  black_graves = '#323232',
}

function fullwine.terminal_color()
  vim.g.terminal_color_0 = fullwine.black_graves
  vim.g.terminal_color_1 = fullwine.nebiolo
  vim.g.terminal_color_2 = fullwine.verdicchio
  vim.g.terminal_color_3 = fullwine.riesling
  vim.g.terminal_color_4 = fullwine.white_port
  vim.g.terminal_color_5 = fullwine.teroldeguo
  vim.g.terminal_color_6 = fullwine.tempranillo
  vim.g.terminal_color_7 = fullwine.muscadet
  vim.g.terminal_color_8 = fullwine.white_graves
  vim.g.terminal_color_9 = fullwine.malbec
  vim.g.terminal_color_10 = fullwine.albarino
  vim.g.terminal_color_11 = fullwine.sauternes
  vim.g.terminal_color_12 = fullwine.sherry
  vim.g.terminal_color_13 = fullwine.zinfandel
  vim.g.terminal_color_14 = fullwine.syrah_rose
  vim.g.terminal_color_15 = fullwine.muscadet
end

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
    FoldColumn = {fg=fullwine.graves,bg=fullwine.aged_reds};
    VertSplit = {fg=fullwine.graves,bg=fullwine.aged_reds};
    Folded = {fg=fullwine.white_graves,bg=fullwine.aged_reds};
    EndOfBuffer = {fg=fullwine.black_graves,bg=fullwine.none};
    IncSearch = {fg=fullwine.old_reds,bg=fullwine.sherry,style='italic'};
    Search = {fg=fullwine.old_reds,bg=fullwine.sherry,style='italic'};
    ColorColumn = {fg=fullwine.none,bg=fullwine.tempranillo};
    Conceal = {fg=fullwine.white_graves,bg=fullwine.none};
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
    -- DiffAdd = {fg=fullwine.verdicchio,bg=fullwine.old_reds};
    -- DiffChange = {fg=fullwine.white_port,bg=fullwine.passed_reds};
    -- DiffDelete = {fg=fullwine.malbec,bg=fullwine.old_reds};
    -- DiffText = {fg=fullwine.sherry,bg=fullwine.old_reds};
    Directory = {fg=fullwine.albarino,bg=fullwine.none,style='bold'};
    ErrorMsg = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    WarningMsg = {fg=fullwine.riesling,bg=fullwine.none,style='bold'};
    ModeMsg = {fg=fullwine.verdicchio,bg=fullwine.none,style='bold'};
    MatchParen = {fg=fullwine.riesling,bg=fullwine.wrong_reds};
    NonText = {fg=fullwine.white_graves};
    Whitespace = {fg=fullwine.graves};
    SpecialKey = {fg=fullwine.graves};
    Pmenu = {fg=fullwine.muscadet,bg=fullwine.nebiolo};
    PmenuSel = {fg=fullwine.nebiolo,bg=fullwine.white_port,style='italic'};
    PmenuSbar = {fg=fullwine.none,bg=fullwine.nebiolo};
    PmenuThumb = {fg=fullwine.none,bg=fullwine.muscadet};
    WildMenu = {fg=fullwine.muscadet,bg=fullwine.nebiolo,style='italic'};
    Question = {fg=fullwine.verdicchio};
    NormalFloat = {fg=fullwine.muscadet,bg=fullwine.passed_reds};
    Tabline = {fg=fullwine.white_graves,bg=fullwine.old_reds};
    TabLineFill = {bg=fullwine.old_reds};
    TabLineSel = {fg=fullwine.white_port,bg=fullwine.old_reds};
    StatusLine = {fg=fullwine.muscadet,bg=fullwine.passed_reds,style='italic'};
    StatusLineNC = {fg=fullwine.graves,bg=fullwine.passed_reds,style=fullwine.none};
    SpellBad = {fg=fullwine.malbec,bg=fullwine.none,style='undercurl'};
    SpellCap = {fg=fullwine.nebiolo,bg=fullwine.none,style='undercurl'};
    SpellLocal = {fg=fullwine.sherry,bg=fullwine.none,style='undercurl'};
    SpellRare = {fg=fullwine.verdicchio,bg=fullwine.none,style = 'undercurl'};
    Visual = {fg=fullwine.none,bg=fullwine.syrah_rose};
    VisualNOS = {fg=fullwine.none,bg=fullwine.syrah_rose};
    QuickFixLine = {fg=fullwine.aged_reds,bg=fullwine.white_port,style='bold'};
    debugPC = {fg=fullwine.tempranillo,bg=fullwine.none};
    debugBreakpoint = {fg=fullwine.malbec,bg=fullwine.none};

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
    Typedef = {fg=fullwine.riesling};
    Exception = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    Statement = {fg=fullwine.riesling,bg=fullwine.none};
    Error = {fg=fullwine.muscadet,bg=fullwine.malbec,style='bold'};
    StorageClass = {fg=fullwine.pinot_noir};
    Tag = {fg=fullwine.verdicchio};
    Label = {fg=fullwine.zinfandel};
    Structure = {fg=fullwine.pinot_noir};
    Operator = {fg=fullwine.sauternes};
    Title = {fg=fullwine.riesling,bg=fullwine.none,style='bold'};
    Special = {fg=fullwine.white_port,bg=fullwine.none};
    SpecialChar = {fg=fullwine.verdicchio};
    Type = {fg=fullwine.pinot_noir};
    Function = {fg=fullwine.white_port,bg=fullwine.none,style='bold'};
    String = {fg=fullwine.verdicchio};
    Character = {fg=fullwine.verdicchio};
    Constant = {fg=fullwine.teroldeguo};
    Macro = {fg=fullwine.teroldeguo};
    Identifier = {fg=fullwine.riesling};
    Comment = {fg=fullwine.white_graves};
    SpecialComment = {fg=fullwine.white_graves};
    Todo = {fg=fullwine.muscadet,bg=fullwine.none,style='bold'};
    Delimiter = {fg=fullwine.white_port};
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
