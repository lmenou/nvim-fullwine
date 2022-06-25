-- Theme: fullwine
-- Author: lmenou
-- LICENSE: Apache 2.0

local fullwine = {
  -- Brown and Black
  aged_reds = "#372f2f",
  old_reds = "#644141",
  passed_reds = "#7e4138",

  -- Orange
  white_port = "#ffa500",
  sauternes = "#ffee19",

  -- White
  sherry = "#f3d171",
  albarino = "#e3e07f",
  muscadet = "#fcffca",

  -- Green
  grenache = "#8abda4",
  riesling = "#e4db4a",
  verdicchio = "#cfe94e",

  -- Red
  tempranillo = "#d63e2d",
  nebiolo = "#a92900",
  malbec = "#ff4530",

  -- Purple
  syrah_rose = "#b84b4a",
  teroldeguo = "#e378a2 ",
  zinfandel = "#ffa9e2",

  -- Pink
  mourvedre = "#ffbaab",
  pinot_noir = "#e54772 ",

  -- Grey
  white_graves = "#8e8e8e",
  graves = "#737373",
  discus = "#cec7d4",
}

local syntax = {
  -- Layout
  Normal = { fg = fullwine.muscadet, bg = fullwine.aged_reds },
  Terminal = { fg = fullwine.muscadet, bg = fullwine.aged_reds },
  SignColumn = { fg = fullwine.none },
  FoldColumn = { fg = fullwine.white_graves, bg = fullwine.aged_reds },
  VertSplit = { fg = fullwine.graves, bg = fullwine.aged_reds },
  Folded = { fg = fullwine.white_graves, bg = fullwine.aged_reds },
  EndOfBuffer = { fg = fullwine.graves },
  IncSearch = { fg = fullwine.old_reds, bg = fullwine.white_port, style = "bold" },
  Search = { fg = fullwine.old_reds, bg = fullwine.sherry, style = "bold" },
  ColorColumn = { fg = fullwine.none, bg = fullwine.tempranillo },
  Conceal = { fg = fullwine.white_graves },
  Cursor = { fg = fullwine.none, style = "reverse" },
  vCursor = { fg = fullwine.none, style = "reverse" },
  iCursor = { fg = fullwine.none, style = "reverse" },
  lCursor = { fg = fullwine.none, style = "reverse" },
  CursorIM = { fg = fullwine.none, style = "reverse" },
  CursorColumn = { fg = fullwine.none, bg = fullwine.old_reds },
  CursorLine = { fg = fullwine.none, bg = fullwine.old_reds },
  LineNr = { fg = fullwine.graves },
  LineNrAbove = { fg = fullwine.graves },
  LineNrBelow = { fg = fullwine.graves },
  qfLineNr = { fg = fullwine.graves },
  CursorLineNr = { fg = fullwine.sherry, bg = fullwine.old_reds },
  DiffAdd = { fg = fullwine.nebiolo, bg = fullwine.riesling },
  DiffChange = { fg = fullwine.muscadet, bg = fullwine.old_reds },
  DiffDelete = { fg = fullwine.muscadet, bg = fullwine.malbec },
  DiffText = { fg = fullwine.sherry, bg = fullwine.nebiolo },
  Directory = { fg = fullwine.albarino, style = "bold" },
  ErrorMsg = { fg = fullwine.malbec, style = "bold" },
  WarningMsg = { fg = fullwine.riesling, style = "bold" },
  ModeMsg = { fg = fullwine.verdicchio, style = "bold" },
  MoreMsg = { fg = fullwine.grenache },
  MatchParen = { fg = fullwine.riesling, bg = fullwine.passed_reds, style = "underline" },
  NonText = { fg = fullwine.graves },
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
  StatusLineNC = { fg = fullwine.white_graves, bg = fullwine.passed_reds, style = fullwine.none },
  SpellBad = { fg = fullwine.malbec, style = "undercurl" },
  SpellCap = { fg = fullwine.nebiolo, style = "undercurl" },
  SpellLocal = { fg = fullwine.sherry, style = "undercurl" },
  SpellRare = { fg = fullwine.verdicchio, style = "undercurl" },
  Visual = { fg = fullwine.none, bg = fullwine.syrah_rose },
  VisualNOS = { fg = fullwine.none, bg = fullwine.syrah_rose },
  QuickFixLine = { fg = fullwine.aged_reds, bg = fullwine.white_port, style = "bold" },
  debugPC = { fg = fullwine.tempranillo },
  debugBreakpoint = { fg = fullwine.malbec },

  -- Syntax
  Boolean = { fg = fullwine.teroldeguo, style = "bold" },
  Number = { fg = fullwine.teroldeguo },
  Float = { fg = fullwine.teroldeguo },
  PreProc = { fg = fullwine.zinfandel },
  PreCondit = { fg = fullwine.zinfandel },
  Include = { fg = fullwine.malbec },
  Define = { fg = fullwine.zinfandel },
  Conditional = { fg = fullwine.malbec, style = fullwine.none },
  Repeat = { fg = fullwine.malbec, style = fullwine.none },
  Keyword = { fg = fullwine.malbec, style = fullwine.none },
  Typedef = { fg = fullwine.riesling },
  Exception = { fg = fullwine.malbec, style = "bold" },
  Statement = { fg = fullwine.malbec },
  Error = { fg = fullwine.muscadet, bg = fullwine.malbec, style = "bold" },
  StorageClass = { fg = fullwine.pinot_noir },
  Tag = { fg = fullwine.verdicchio },
  Label = { fg = fullwine.zinfandel },
  Structure = { fg = fullwine.white_port, style = "bold" },
  Operator = { fg = fullwine.sauternes },
  Title = { fg = fullwine.white_port, style = "bold" },
  Special = { fg = fullwine.mourvedre },
  SpecialChar = { fg = fullwine.zinfandel },
  Type = { fg = fullwine.grenache },
  Function = { fg = fullwine.white_port, style = "bold" },
  String = { fg = fullwine.verdicchio },
  Character = { fg = fullwine.verdicchio },
  Constant = { fg = fullwine.teroldeguo },
  Macro = { fg = fullwine.zinfandel },
  Identifier = { fg = fullwine.discus },
  Comment = { fg = fullwine.white_graves, style = "italic" },
  SpecialComment = { fg = fullwine.white_graves, style = "italic" },
  Todo = { fg = fullwine.muscadet, style = "bold" },
  Delimiter = { fg = fullwine.white_port },
  Ignore = { fg = fullwine.white_graves },
  Underlined = { fg = fullwine.discus, style = "underline" },

  -- LSP layout
  -- Diagnostic
  DiagnosticError = { fg = fullwine.malbec, style = "bold" },
  DiagnosticFloatingError = { fg = fullwine.malbec, style = "bold" },
  DiagnosticSignError = { fg = fullwine.malbec, style = "bold" },
  DiagnosticWarn = { fg = fullwine.riesling, style = "bold" },
  DiagnosticFloatingWarn = { fg = fullwine.riesling, style = "bold" },
  DiagnosticSignWarn = { fg = fullwine.riesling, style = "bold" },
  DiagnosticHint = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticFloatingHint = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticSignHint = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticInfo = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticFloatingInfo = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticSignInfo = { fg = fullwine.verdicchio, style = "bold" },
  DiagnosticUnderlineError = { fg = fullwine.malbec, style = "undercurl" },
  DiagnosticUnderlineHint = { fg = fullwine.verdicchio, style = "undercurl" },
  DiagnosticUnderlineInfo = { fg = fullwine.verdicchio, style = "undercurl" },
  DiagnosticUnderlineWarn = { fg = fullwine.riesling, style = "undercurl" },

  -- LspDiagnostic: Backward compatibility
  LspDiagnosticsDefaultError = { fg = fullwine.malbec, style = "bold" },
  LspDiagnosticsFloatingError = { fg = fullwine.malbec, style = "bold" },
  LspDiagnosticsSignError = { fg = fullwine.malbec, style = "bold" },
  LspDiagnosticsDefaultWarning = { fg = fullwine.riesling, style = "bold" },
  LspDiagnosticsFloatingWarning = { fg = fullwine.riesling, style = "bold" },
  LspDiagnosticsSignWarning = { fg = fullwine.riesling, style = "bold" },
  LspDiagnosticsDefaultHint = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsFloatingHint = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsSignHint = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsDefaultInformation = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsFloatingInformation = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsSignInformation = { fg = fullwine.verdicchio, style = "bold" },
  LspDiagnosticsUnderlineError = { fg = fullwine.malbec, style = "undercurl" },
  LspDiagnosticsUnderlineHint = { fg = fullwine.verdicchio, style = "undercurl" },
  LspDiagnosticsUnderlineInfo = { fg = fullwine.verdicchio, style = "undercurl" },
  LspDiagnosticsUnderlineWarning = { fg = fullwine.riesling, style = "undercurl" },
}

local plugin = {
  -- ALE
  ALEErrorSign = syntax.DiagnosticError,
  ALEWarningSign = syntax.DiagnosticHint,

  -- COC
  CocErrorHighlight = syntax.DiagnosticUnderlineError,
  CocErrorSign = syntax.DiagnosticSignError,
  CocHintHighlight = syntax.DiagnosticUnderlineHint,
  CocHintSign = syntax.DiagnosticSignHint,
  CocInfoHighlight = syntax.DiagnosticUnderlineInfo,
  CocInfoSign = syntax.DiagnosticSignInfo,
  CocWarningHighlight = syntax.DiagnosticUnderlineWarn,
  CocWarningSign = syntax.DiagnosticSignWarn,

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

  -- Dirvish
  DirvishPathHead = syntax.Directory,
  DirvishPathTail = syntax.Operator,
  DirvishSuffix = syntax.SpecialChar,
  DirvishArg = syntax.Type,

  -- NvimTree
  NvimTreeSymlink = syntax.Special,
  NvimTreeFolderName = syntax.Directory,
  NvimTreeRootFolder = syntax.Directory,
  NvimTreeFolderIcon = syntax.String,
  NvimTreeEmptyFolderName = syntax.Directory,
  NvimTreeOpenedFolderName = syntax.Directory,
  NvimTreeExecFile = syntax.Include,
  NvimTreeImageFile = syntax.Comment,

  -- Fern
  FernSpinner = syntax.Special,
  FernMarkedLine = syntax.Tag,
  FernWindowSelectIndicator = syntax.IncSearch,

  -- Cmp
  CmpItemAbbrMatch = { fg = fullwine.white_port },
  CmpItemAbbrMatchFuzzy = { fg = fullwine.white_port },
}

if vim.g.fullwine_italicize == 0 then
  syntax.PmenuSel = { fg = fullwine.nebiolo, bg = fullwine.white_port }
  syntax.WildMenu = { fg = fullwine.muscadet, bg = fullwine.nebiolo }
  syntax.StatusLine = { fg = fullwine.muscadet, bg = fullwine.passed_reds }
  syntax.Comment = { fg = fullwine.white_graves }
  syntax.SpecialComment = { fg = fullwine.white_graves }
end

return {
  fullwine = fullwine,
  syntax = syntax,
  plugin = plugin,
}
