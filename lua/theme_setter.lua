local M = {}

M.highlighter = function (group, color)
  local style = color.style and 'gui=' .. color.style or 'gui=NONE'
  local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
  local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
  local sp = color.sp and 'guisp=' .. color.sp or ''

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp
  vim.cmd(hl)
end

M.colors = {
  -- background
  -- aged_reds = '#372f2f',
  old_reds = '#644141',
  passed_reds = '#5a3939',
  wrong_reds = '#7e4138',
  light_reds = '#543636',
  discus = '#cec7d4',

  -- foreground
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

  -- minerals
  graves = '#737373',
  white_graves = '#8e8e8e',
  black_graves = '#323232',
}

function M.setter(fullwine)
  local syntax = {
    -- Layout
    Normal = {fg=fullwine.muscadet,bg=fullwine.aged_reds};
    Terminal = {fg = fullwine.muscadet,bg=fullwine.aged_reds};
    SignColumn = {fg=fullwine.muscadet,bg=fullwine.old_reds};
    FoldColumn = {fg=fullwine.graves,bg=fullwine.aged_reds};
    VertSplit = {fg=fullwine.graves,bg=fullwine.aged_reds};
    Folded = {fg=fullwine.white_graves,bg=fullwine.aged_reds};
    EndOfBuffer = {fg=fullwine.black_graves,bg=fullwine.none};
    IncSearch = {fg=fullwine.old_reds,bg=fullwine.white_port,style='bold'};
    Search = {fg=fullwine.old_reds,bg=fullwine.sherry,style='bold'};
    ColorColumn = {fg=fullwine.none,bg=fullwine.tempranillo};
    Conceal = {fg=fullwine.white_graves,bg=fullwine.none};
    Cursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    vCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    iCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    lCursor = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    CursorIM = {fg=fullwine.none,bg=fullwine.none,style='reverse'};
    CursorColumn = {fg=fullwine.none,bg=fullwine.light_reds};
    CursorLine = {fg=fullwine.none,bg=fullwine.light_reds};
    LineNr = {fg=fullwine.graves};
    qfLineNr = {fg=fullwine.graves};
    CursorLineNr = {fg=fullwine.sherry,bg=fullwine.light_reds};
    DiffAdd = {fg=fullwine.nebiolo,bg=fullwine.riesling};
    DiffChange = {fg=fullwine.muscadet,bg=fullwine.old_reds};
    DiffDelete = {fg=fullwine.muscadet,bg=fullwine.malbec};
    DiffText = {fg=fullwine.sherry,bg=fullwine.nebiolo};
    Directory = {fg=fullwine.albarino,bg=fullwine.none,style='bold'};
    ErrorMsg = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    WarningMsg = {fg=fullwine.riesling,bg=fullwine.none,style='bold'};
    ModeMsg = {fg=fullwine.verdicchio,bg=fullwine.none,style='bold'};
    MatchParen = {fg=fullwine.riesling,bg=fullwine.wrong_reds,style='undercurl'};
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

    -- Dev environment
    Boolean = {fg=fullwine.teroldeguo};
    Number = {fg=fullwine.teroldeguo};
    Float = {fg=fullwine.teroldeguo};
    PreProc = {fg=fullwine.zinfandel};
    PreCondit = {fg=fullwine.zinfandel};
    Include = {fg=fullwine.malbec};
    Define = {fg=fullwine.zinfandel};
    Conditional = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    Repeat = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    Keyword = {fg=fullwine.malbec,bg=fullwine.none,style=fullwine.none};
    Typedef = {fg=fullwine.riesling};
    Exception = {fg=fullwine.malbec,bg=fullwine.none,style='bold'};
    Statement = {fg=fullwine.malbec,bg=fullwine.none};
    Error = {fg=fullwine.muscadet,bg=fullwine.malbec,style='bold'};
    StorageClass = {fg=fullwine.pinot_noir};
    Tag = {fg=fullwine.verdicchio};
    Label = {fg=fullwine.zinfandel};
    Structure = {fg=fullwine.pinot_noir};
    Operator = {fg=fullwine.sauternes};
    Title = {fg=fullwine.riesling,bg=fullwine.none,style='bold'};
    Special = {fg=fullwine.white_port,bg=fullwine.none};
    SpecialChar = {fg=fullwine.verdicchio};
    Type = {fg=fullwine.grenache};
    Function = {fg=fullwine.white_port,bg=fullwine.none,style='bold'};
    String = {fg=fullwine.verdicchio};
    Character = {fg=fullwine.verdicchio};
    Constant = {fg=fullwine.teroldeguo};
    Macro = {fg=fullwine.zinfandel};
    Identifier = {fg=fullwine.riesling};
    Comment = {fg=fullwine.white_graves,style='italic'};
    SpecialComment = {fg=fullwine.white_graves,style='italic'};
    Todo = {fg=fullwine.muscadet,bg=fullwine.none,style='bold'};
    Delimiter = {fg=fullwine.white_port};
    Ignore = {fg=fullwine.white_graves};
    Underlined = {fg=fullwine.none,style='underline'};
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
    DiagnosticUnderlineError = {fg = fullwine.malbec, style = 'undercurl'},
    DiagnosticUnderlineHint  = {fg = fullwine.verdicchio, style = 'undercurl'},
    DiagnosticUnderlineInfo  = {fg = fullwine.verdicchio, style = 'undercurl'},
    DiagnosticUnderlineWarn = {fg = fullwine.riesling, style = 'undercurl'},

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
    LspDiagnosticsUnderlineError = {fg = fullwine.malbec, style = 'undercurl'},
    LspDiagnosticsUnderlineHint  = {fg = fullwine.verdicchio, style = 'undercurl'},
    LspDiagnosticsUnderlineInfo  = {fg = fullwine.verdicchio, style = 'undercurl'},
    LspDiagnosticsUnderlineWarning = {fg = fullwine.riesling, style = 'undercurl'},
  }


  local treesitter = {
    TSAnnotation = { fg = fullwine.nebiolo, style = 'bold' },
    TSAttribute = { fg = fullwine.muscadet },
    TSBoolean = syntax.Boolean,
    TSCharacter = syntax.Character,
    TSConditional = syntax.Conditional,
    TSConstBuiltin = { fg = fullwine.pinot_noir },
    TSConstMacro = { fg = fullwine.pinot_noir },
    TSConstant = syntax.Constant,
    TSConstructor = syntax.Function,
    TSEmphasis = { fg = fullwine.pinot_noir, style = 'bold' },
    TSException = syntax.Exception,
    TSField = { fg = fullwine.discus },
    TSProperty = { fg = fullwine.discus },
    TSFloat = syntax.Float,
    TSFuncBuiltin = syntax.Function,
    TSFuncMacro = syntax.Function,
    TSFunction = syntax.Function,
    TSInclude = syntax.Include,
    TSKeyword = syntax.Keyword,
    TSKeywordFunction = syntax.Keyword,
    TSLabel = syntax.Label,
    TSLiteral = { fg = fullwine.muscadet },
    TSMethod = { fg = fullwine.sherry, style='bold' },
    TSNamespace = { fg = fullwine.riesling },
    TSNumber = syntax.Number,
    TSOperator = syntax.Operator,
    TSParameterReference= { fg = fullwine.verdicchio },
    TSPunctBracket = syntax.Delimiter,
    TSPunctDelimiter = syntax.Delimiter,
    TSPunctSpecial = { fg = fullwine.sauternes },
    TSRepeat = syntax.Repeat,
    TSStrike = { fg = fullwine.muscadet, bg = fullwine.wrong_reds, style = 'bold'},
    TSString = syntax.String,
    TSStringEscape = { fg = fullwine.malbec },
    TSStringRegex = { fg = fullwine.sherry },
    TSSymbol = { fg = fullwine.malbec },
    TSTag = syntax.Tag,
    TSTagDelimiter = syntax.Tag,
    TSText = { fg = fullwine.muscadet },
    TSTextReference = { fg = fullwine.discus },
    TSType = syntax.Type,
    TSTypeBuiltin = syntax.Type,
    TSURI = { fg = fullwine.sherry, bg = fullwine.none, style = 'underline' },
    TSUnderline = syntax.Underlined,
    TSVariable = { fg = fullwine.muscadet },
    TSVariableBuiltin = { fg = fullwine.mourvedre },
    TSWarning = syntax.WarningMsg,
    TSComment = syntax.Comment,
    TSNote = syntax.ModeMsg,
    TSDanger = syntax.ErrorMsg,
    TSTitle = syntax.Title,
    -- TSError = syntax.ErrorMsg,
  }

  local plugin = {
    -- ALE
    ALEErrorSign = lspdiagnostic.DiagnosticError,
    ALEWarningSign = lspdiagnostic.DiagnosticHint,

    -- COC
    CocErrorHighlight = lspdiagnostic.DiagnosticUnderlineError,
    CocErrorSign = lspdiagnostic.DiagnosticSignError,
    CocHintHighlight  = lspdiagnostic.DiagnosticUnderlineHint  ,
    CocHintSign  = lspdiagnostic.DiagnosticSignHint,
    CocInfoHighlight  = lspdiagnostic.DiagnosticUnderlineInfo,
    CocInfoSign  = lspdiagnostic.DiagnosticSignInfo,
    CocWarningHighlight = lspdiagnostic.DiagnosticUnderlineWarn,
    CocWarningSign = lspdiagnostic.DiagnosticSignWarn,

    -- Easy-Motion
    EasyMotion = syntax.IncSearch,
    JumpMotion = syntax.Search,

    -- Git-Futter/Git-Signs/Vim-Signify
    GitGutterAdd    = {fg = fullwine.nebiolo},
    GitGutterChange = {fg = fullwine.muscadet},
    GitGutterDelete = {fg = fullwine.muscadet},
    GitGutterChangeDelete = {fg = fullwine.sherry},

    SignifySignAdd    = {fg = fullwine.nebiolo},
    SignifySignChange = {fg = fullwine.muscadet},
    SignifySignDelete = {fg = fullwine.muscadet},
    SignifySignChangeDelete = {fg = fullwine.sherry},

    GitSignsAdd = { fg = fullwine.nebiolo },
    GitSignsChange = {fg = fullwine.muscadet},
    GitSignsDelete = {fg = fullwine.muscadet},

    -- Vim-Indent-Guides
    IndentGuidesOdd  = { bg=fullwine.graves },
    IndentGuidesEven = { bg=fullwine.graves },

    -- NERDTree/Fern
    NERDTreeCWD = syntax.Label,
    NERDTreeUp  = syntax.Operator,
    NERDTreeDir = syntax.Directory,
    NERDTreeDirSlash = syntax.Delimiter,
    NERDTreeOpenable = syntax.Directory,
    NERDTreeClosable = syntax.Directory,
    NERDTreeExecFile = syntax.Function,
    NERDTreeLinkTarget = syntax.Tag,

    FernBranchText = syntax.Directory,

    -- LSPSaga
    DefinitionCount = syntax.Number,
    DefinitionIcon  = syntax.Special,
    ReferencesCount = syntax.Number,
    ReferencesIcon  = treesitter.TSTextReference,
    TargetFileName  = syntax.Directory,
    TargetWord = syntax.Title,
    }

  if vim.g.fullwine_italicize == 0 then
    syntax.PmenuSel = {fg=fullwine.nebiolo,bg=fullwine.white_port};
    syntax.WildMenu = {fg=fullwine.muscadet,bg=fullwine.nebiolo};
    syntax.StatusLine = {fg=fullwine.muscadet,bg=fullwine.passed_reds};
    syntax.Comment = {fg=fullwine.white_graves};
    syntax.SpecialComment = {fg=fullwine.white_graves};
    treesitter.TSComment = {fg=fullwine.white_graves}
  end

  return {
    syntax = syntax,
    lspdiagnostic = lspdiagnostic,
    treesitter = treesitter,
    plugin = plugin,
    }

end

return M
