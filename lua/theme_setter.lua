-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local M = {}

M.colors = {
  -- background
  -- Brown
  aged_reds = "#372f2f",
  old_reds = "#644141",
  passed_reds = "#7e4138",

  -- foreground
  -- Yellow
  white_port = "#ffa500",
  sherry = "#f3d171",
  albarino = "#e3e07f",
  muscadet = "#fcffca",
  -- Green
  riesling = "#e4db4a",
  sauternes = "#ffee19",
  verdicchio = "#cfe94e",
  grenache = "#8abda4",
  -- Red
  tempranillo = "#8c2828",
  malbec = "#ff4530",
  nebiolo = "#a92900",
  -- Purple
  zinfandel = "#ffa9e2",
  syrah_rose = "#b84b4a",
  teroldeguo = "#e378a2 ",
  pinot_noir = "#e54772 ",
  mourvedre = "#ff9494",

  -- comments
  -- Grey
  graves = "#737373",
  white_graves = "#8e8e8e",
  discus = "#cec7d4",
}

M.highlighter = function(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
  vim.cmd(hl)
end

M.terminal_highlighter = function(fullwine)
  vim.g.terminal_color_0 = fullwine.aged_reds
  vim.g.terminal_color_1 = fullwine.malbec
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
end

function M.setter(fullwine)
  local syntax = {
    -- Layout
    Normal = { fg = fullwine.muscadet, bg = fullwine.aged_reds },
    Terminal = { fg = fullwine.muscadet, bg = fullwine.aged_reds },
    SignColumn = { fg = fullwine.none, bg = fullwine.none },
    FoldColumn = { fg = fullwine.graves, bg = fullwine.aged_reds },
    VertSplit = { fg = fullwine.graves, bg = fullwine.aged_reds },
    Folded = { fg = fullwine.white_graves, bg = fullwine.aged_reds },
    EndOfBuffer = { fg = fullwine.aged_reds, bg = fullwine.none },
    IncSearch = { fg = fullwine.old_reds, bg = fullwine.white_port, style = "bold" },
    Search = { fg = fullwine.old_reds, bg = fullwine.sherry, style = "bold" },
    ColorColumn = { fg = fullwine.none, bg = fullwine.tempranillo },
    Conceal = { fg = fullwine.white_graves, bg = fullwine.none },
    Cursor = { fg = fullwine.none, bg = fullwine.none, style = "reverse" },
    vCursor = { fg = fullwine.none, bg = fullwine.none, style = "reverse" },
    iCursor = { fg = fullwine.none, bg = fullwine.none, style = "reverse" },
    lCursor = { fg = fullwine.none, bg = fullwine.none, style = "reverse" },
    CursorIM = { fg = fullwine.none, bg = fullwine.none, style = "reverse" },
    CursorColumn = { fg = fullwine.none, bg = fullwine.old_reds },
    CursorLine = { fg = fullwine.none, bg = fullwine.old_reds },
    LineNr = { fg = fullwine.sherry },
    LineNrAbove = { fg = fullwine.graves },
    LineNrBelow = { fg = fullwine.graves },
    qfLineNr = { fg = fullwine.graves },
    CursorLineNr = { fg = fullwine.sherry, bg = fullwine.old_reds },
    DiffAdd = { fg = fullwine.nebiolo, bg = fullwine.riesling },
    DiffChange = { fg = fullwine.muscadet, bg = fullwine.old_reds },
    DiffDelete = { fg = fullwine.muscadet, bg = fullwine.malbec },
    DiffText = { fg = fullwine.sherry, bg = fullwine.nebiolo },
    Directory = { fg = fullwine.albarino, bg = fullwine.none, style = "bold" },
    ErrorMsg = { fg = fullwine.malbec, bg = fullwine.none, style = "bold" },
    WarningMsg = { fg = fullwine.riesling, bg = fullwine.none, style = "bold" },
    ModeMsg = { fg = fullwine.verdicchio, bg = fullwine.none, style = "bold" },
    MoreMsg = { fg = fullwine.grenache, bg = fullwine.none },
    MatchParen = { fg = fullwine.riesling, bg = fullwine.passed_reds, style = "undercurl" },
    NonText = { fg = fullwine.white_graves },
    Whitespace = { fg = fullwine.graves },
    SpecialKey = { fg = fullwine.graves },
    Pmenu = { fg = fullwine.muscadet, bg = fullwine.passed_reds },
    PmenuSel = { fg = fullwine.nebiolo, bg = fullwine.white_port, style = "italic" },
    PmenuSbar = { fg = fullwine.none, bg = fullwine.passed_reds },
    PmenuThumb = { fg = fullwine.none, bg = fullwine.syrah_rose },
    WildMenu = { fg = fullwine.muscadet, bg = fullwine.nebiolo, style = "italic" },
    Question = { fg = fullwine.verdicchio },
    NormalFloat = { fg = fullwine.muscadet, bg = fullwine.passed_reds },
    Tabline = { fg = fullwine.white_graves, bg = fullwine.old_reds },
    TabLineFill = { bg = fullwine.old_reds },
    TabLineSel = { fg = fullwine.white_port, bg = fullwine.old_reds },
    StatusLine = { fg = fullwine.muscadet, bg = fullwine.passed_reds, style = "italic" },
    StatusLineNC = { fg = fullwine.graves, bg = fullwine.passed_reds, style = fullwine.none },
    SpellBad = { fg = fullwine.malbec, bg = fullwine.none, style = "undercurl" },
    SpellCap = { fg = fullwine.nebiolo, bg = fullwine.none, style = "undercurl" },
    SpellLocal = { fg = fullwine.sherry, bg = fullwine.none, style = "undercurl" },
    SpellRare = { fg = fullwine.verdicchio, bg = fullwine.none, style = "undercurl" },
    Visual = { fg = fullwine.none, bg = fullwine.syrah_rose },
    VisualNOS = { fg = fullwine.none, bg = fullwine.syrah_rose },
    QuickFixLine = { fg = fullwine.aged_reds, bg = fullwine.white_port, style = "bold" },
    debugPC = { fg = fullwine.tempranillo, bg = fullwine.none },
    debugBreakpoint = { fg = fullwine.malbec, bg = fullwine.none },

    -- Global Dev environment
    Boolean = { fg = fullwine.teroldeguo, bg = fullwine.none, style = "bold" },
    Number = { fg = fullwine.teroldeguo },
    Float = { fg = fullwine.teroldeguo },
    PreProc = { fg = fullwine.zinfandel },
    PreCondit = { fg = fullwine.zinfandel },
    Include = { fg = fullwine.malbec },
    Define = { fg = fullwine.zinfandel },
    Conditional = { fg = fullwine.malbec, bg = fullwine.none, style = fullwine.none },
    Repeat = { fg = fullwine.malbec, bg = fullwine.none, style = fullwine.none },
    Keyword = { fg = fullwine.malbec, bg = fullwine.none, style = fullwine.none },
    Typedef = { fg = fullwine.riesling },
    Exception = { fg = fullwine.malbec, bg = fullwine.none, style = "bold" },
    Statement = { fg = fullwine.malbec, bg = fullwine.none },
    Error = { fg = fullwine.muscadet, bg = fullwine.malbec, style = "bold" },
    StorageClass = { fg = fullwine.pinot_noir },
    Tag = { fg = fullwine.verdicchio },
    Label = { fg = fullwine.zinfandel },
    Structure = { fg = fullwine.white_port, style = "bold" },
    Operator = { fg = fullwine.sauternes },
    Title = { fg = fullwine.white_port, bg = fullwine.none, style = "bold" },
    Special = { fg = fullwine.mourvedre, bg = fullwine.none },
    SpecialChar = { fg = fullwine.zinfandel },
    Type = { fg = fullwine.grenache },
    Function = { fg = fullwine.white_port, bg = fullwine.none, style = "bold" },
    String = { fg = fullwine.verdicchio },
    Character = { fg = fullwine.verdicchio },
    Constant = { fg = fullwine.teroldeguo },
    Macro = { fg = fullwine.zinfandel },
    Identifier = { fg = fullwine.discus },
    Comment = { fg = fullwine.white_graves, style = "italic" },
    SpecialComment = { fg = fullwine.white_graves, style = "italic" },
    Todo = { fg = fullwine.muscadet, bg = fullwine.none, style = "bold" },
    Delimiter = { fg = fullwine.white_port },
    Ignore = { fg = fullwine.white_graves },
    Underlined = { fg = fullwine.discus, style = "underline" },

    -- Languages specific
    -- Markdown
    markdownHeadingDelimiter = { fg = fullwine.mourvedre },
  }

  local lspdiagnostic = {
    -- Diagnostic
    DiagnosticError = syntax.ErrorMsg,
    DiagnosticFloatingError = syntax.ErrorMsg,
    DiagnosticSignError = syntax.ErrorMsg,
    DiagnosticWarn = syntax.WarningMsg,
    DiagnosticFloatingWarn = syntax.WarningMsg,
    DiagnosticSignWarn = syntax.WarningMsg,
    DiagnosticHint = syntax.ModeMsg,
    DiagnosticFloatingHint = syntax.ModeMsg,
    DiagnosticSignHint = syntax.ModeMsg,
    DiagnosticInfo = syntax.ModeMsg,
    DiagnosticFloatingInfo = syntax.ModeMsg,
    DiagnosticSignInfo = syntax.ModeMsg,
    DiagnosticUnderlineError = { fg = fullwine.malbec, style = "undercurl" },
    DiagnosticUnderlineHint = { fg = fullwine.verdicchio, style = "undercurl" },
    DiagnosticUnderlineInfo = { fg = fullwine.verdicchio, style = "undercurl" },
    DiagnosticUnderlineWarn = { fg = fullwine.riesling, style = "undercurl" },

    -- LspDiagnostic
    LspDiagnosticsDefaultError = syntax.ErrorMsg,
    LspDiagnosticsFloatingError = syntax.ErrorMsg,
    LspDiagnosticsSignError = syntax.ErrorMsg,
    LspDiagnosticsDefaultWarning = syntax.WarningMsg,
    LspDiagnosticsFloatingWarning = syntax.WarningMsg,
    LspDiagnosticsSignWarning = syntax.WarningMsg,
    LspDiagnosticsDefaultHint = syntax.ModeMsg,
    LspDiagnosticsFloatingHint = syntax.ModeMsg,
    LspDiagnosticsSignHint = syntax.ModeMsg,
    LspDiagnosticsDefaultInformation = syntax.ModeMsg,
    LspDiagnosticsFloatingInformation = syntax.ModeMsg,
    LspDiagnosticsSignInformation = syntax.ModeMsg,
    LspDiagnosticsUnderlineError = { fg = fullwine.malbec, style = "undercurl" },
    LspDiagnosticsUnderlineHint = { fg = fullwine.verdicchio, style = "undercurl" },
    LspDiagnosticsUnderlineInfo = { fg = fullwine.verdicchio, style = "undercurl" },
    LspDiagnosticsUnderlineWarning = { fg = fullwine.riesling, style = "undercurl" },
  }

  local plugin = {
    -- ALE
    ALEErrorSign = lspdiagnostic.DiagnosticError,
    ALEWarningSign = lspdiagnostic.DiagnosticHint,

    -- COC
    CocErrorHighlight = lspdiagnostic.DiagnosticUnderlineError,
    CocErrorSign = lspdiagnostic.DiagnosticSignError,
    CocHintHighlight = lspdiagnostic.DiagnosticUnderlineHint,
    CocHintSign = lspdiagnostic.DiagnosticSignHint,
    CocInfoHighlight = lspdiagnostic.DiagnosticUnderlineInfo,
    CocInfoSign = lspdiagnostic.DiagnosticSignInfo,
    CocWarningHighlight = lspdiagnostic.DiagnosticUnderlineWarn,
    CocWarningSign = lspdiagnostic.DiagnosticSignWarn,

    -- Easy-Motion / Sneak-Ease
    EasyMotion = syntax.IncSearch,
    JumpMotion = syntax.Search,

    Sneak = syntax.IncSearch,
    SneakScope = syntax.DiffChange,
    SneakLabel = syntax.IncSearch,

    -- Git-Signs
    GitSignsAdd = { fg = fullwine.verdicchio },
    GitSignsAddNr = { fg = fullwine.verdicchio },
    GitSignsAddLn = { fg = fullwine.verdicchio },
    GitSignsChange = { fg = fullwine.white_port },
    GitSignsChangeNr = { fg = fullwine.white_port },
    GitSignsChangeLn = { fg = fullwine.white_port },
    GitSignsDelete = { fg = fullwine.malbec },
    GitSignsDeleteNr = { fg = fullwine.malbec },
    GitSignsDeleteLn = { fg = fullwine.malbec },

    -- TODO: tree / cmp / fern / dirvish
  }

  if vim.g.fullwine_italicize == 0 then
    syntax.PmenuSel = { fg = fullwine.nebiolo, bg = fullwine.white_port }
    syntax.WildMenu = { fg = fullwine.muscadet, bg = fullwine.nebiolo }
    syntax.StatusLine = { fg = fullwine.muscadet, bg = fullwine.passed_reds }
    syntax.Comment = { fg = fullwine.white_graves }
    syntax.SpecialComment = { fg = fullwine.white_graves }
  end

  return {
    syntax = syntax,
    lspdiagnostic = lspdiagnostic,
    plugin = plugin,
  }
end

return M

-- lua: et tw=79 ts=2 sts=2 sw=2
