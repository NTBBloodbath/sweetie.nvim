--- Core sweetie highlighting groups
---@class core
local core = {}

core.setup = function(palette)
  return {
    --- General UI ---
    ------------------
    Normal = { fg = palette.fg, bg = palette.bg },
    NormalNC = { fg = palette.fg_alt, bg = palette.bg },
    NormalFloat = { fg = palette.fg_alt, bg = palette.bg_alt },
    NormalPopup = { fg = palette.fg, bg = palette.bg_alt },
    NormalPopover = { fg = palette.fg, bg = palette.bg_alt },
    EndOfBuffer = { fg = palette.bg, bg = palette.bg },

    Visual = { bg = palette.bg_alt },
    VisualBold = { bg = palette.bg_alt, bold = true },

    LineNr = { fg = palette.fg, bg = palette.bg },
    LineNrAbove = { fg = palette.grey, bg = palette.bg },
    LineNrBelow = { fg = palette.grey, bg = palette.bg },
    Cursor = { bg = vim.o.background == "dark" and palette.blue or palette.violet },
    CursorLine = { bg = palette.bg_alt },
    CursorLineNr = { fg = palette.fg, bg = palette.bg_alt },
    CursorLineSign = { link = "CursorLine" },
    CursorLineFold = { link = "CursorLine" },
    CursorColumn = { bg = palette.bg_alt },

    Folded = { fg = palette.grey, bg = palette.bg_alt },
    FoldColumn = { fg = palette.fg_alt, bg = palette.bg },
    SignColumn = { bg = palette.bg },
    ColorColumn = { bg = palette.bg_alt },

    WildMenu = { fg = palette.bg_alt, bg = palette.blue },
    WinSeparator = { fg = palette.bg_alt },

    TabLine = { fg = palette.grey, bg = palette.bg, bold = true },
    TabLineSel = { fg = palette.bg_alt, bg = palette.grey, bold = true },
    TabLineFill = { bg = palette.bg_alt, bold = true },

    StatusLine = { fg = palette.fg, bg = palette.bg_alt },
    StatusLineNC = { fg = palette.fg_alt, bg = palette.bg },

    Pmenu = { fg = palette.fg_alt, bg = palette.bg_alt },
    PmenuSel = { fg = palette.bg_alt, bg = palette.blue },
    PmenuSelBold = { fg = palette.bg_alt, bg = palette.blue, bold = true },
    PmenuSBar = { bg = palette.bg_alt },
    PMenuThumb = { bg = palette.grey },

    --- Search, Highlight, etc ---
    ------------------------------
    Search = { fg = palette.bg, bg = palette.cyan },
    Substitute = { fg = palette.red, bold = true, strikethrough = true },
    IncSearch = { fg = palette.bg, bg = palette.yellow, bold = true },
    IncSearchCursor = { reverse = true },

    Conceal = { fg = palette.grey },
    NonText = { fg = palette.dark_grey, bold = true },
    MatchParen = { reverse = true },
    Whitespace = { link = "NonText" },

    Highlight = { bg = palette.bg_alt },
    HighlightSubtle = { link = "Highlight" },

    Title = { fg = palette.violet, bold = true },
    Question = { fg = palette.green, bold = true },

    File = { fg = palette.fg },
    Directory = { fg = palette.teal, bold = true },

    Bold = { bold = true },
    Emphasis = { italic = true },
    Underlined = { underline = true },

    --- Syntax ---
    --------------
    Tag = { fg = palette.cyan },
    Link = { fg = palette.green, underline = true },
    URL = { link = "Link" },
    Comment = { fg = palette.grey, italic = true },
    CommentBold = { fg = palette.grey, bold = true, italic = true },
    CommentURL = { link = "URL" },
    CommentLabel = { link = "CommentBold" },
    CommentSection = { link = "CommentBold" },
    SpecialComment = { fg = palette.magenta, bold = true },

    Macro = { fg = palette.violet },
    Define = { fg = palette.violet, bold = true },
    Include = { fg = palette.violet, bold = true },
    PreProc = { fg = palette.violet, bold = true },
    PreCondit = { fg = palette.violet, bold = true },

    Label = { fg = palette.blue },
    Repeat = { fg = palette.blue },
    Keyword = { fg = palette.blue, italic = true },
    KeywordFunction = { link = "Keyword" },
    Operator = { fg = palette.blue },
    Delimiter = { fg = palette.blue },
    Statement = { fg = palette.blue },
    Exception = { fg = palette.blue },
    Conditional = { fg = palette.blue },

    Variable = { fg = palette.violet },
    VariableBuiltin = { fg = palette.violet, bold = true },
    Constant = { fg = palette.magenta, bold = true },

    Number = { fg = palette.orange },
    Float = { link = "Number" },
    Boolean = { fg = palette.orange, bold = true, italic = true },
    Enum = { fg = palette.orange },

    Character = { fg = palette.green, bold = true },
    SpecialChar = { fg = palette.violet, bold = true },
    String = { fg = palette.green },
    StringDelimiter = { fg = palette.blue },

    Special = { fg = palette.violet },
    SpecialKey = { fg = palette.violet, bold = true },
    SpecialBold = { fg = palette.violet, bold = true },

    Field = { fg = palette.violet },
    Argument = { fg = palette.magenta },
    Attribute = { fg = palette.magenta },
    Identifier = { fg = palette.magenta },
    Property = { fg = palette.magenta },
    Function = { fg = palette.magenta },
    FunctionBuiltin = { fg = palette.magenta, bold = true },
    Method = { fg = palette.violet },

    Type = { fg = palette.orange },
    Typedef = { fg = palette.blue },
    TypeBuiltin = { fg = palette.orange, bold = true },
    Class = { fg = palette.magenta, italic = true },
    StorageClass = { link = "Class" },
    Structure = { fg = palette.blue },
    Constructor = { fg = palette.blue },

    --- Diff ---
    ------------
    DiffAdd = { fg = palette.green, bold = true },
    DiffChange = { fg = palette.orange, bold = true },
    DiffDelete = { fg = palette.red, bold = true },
    DiffText = { fg = palette.orange, bg = palette.bg, bold = true },

    --- Text levels ---
    -------------------
    TextNormal = { fg = palette.fg },
    TextNormalBold = { fg = palette.fg, bold = true },
    TextInfo = { fg = palette.blue },
    TextInfoBold = { fg = palette.blue, bold = true },
    TextSuccess = { fg = palette.green },
    TextSuccessBold = { fg = palette.green, bold = true },
    TextWarning = { fg = palette.yellow },
    TextWarningBold = { fg = palette.yellow, bold = true },
    TextDebug = { fg = palette.yellow },
    TextDebugBold = { fg = palette.yellow, bold = true },
    TextError = { fg = palette.red },
    TextErrorBold = { fg = palette.red, bold = true },
    TextSpecial = { fg = palette.violet },
    TextSpecialBold = { fg = palette.violet, bold = true },
    TextMuted = { fg = palette.grey },
    TextMutedBold = { fg = palette.grey, bold = true },

    Msg = { link = "TextSuccess" },
    MoreMsg = { link = "TextInfo" },
    WarningMsg = { link = "TextWarning" },
    Error = { link = "TextError" },
    ErrorMsg = { link = "TextError" },
    ModeMsg = { link = "TextMutedBold" },
    Todo = { link = "TextSpecialBold" },

    --- Checkhealth ---
    -------------------
    healthHelp = { link = "MoreMsg" },
    healthError = { link = "ErrorMsg" },
    healthSuccess = { link = "Msg" },
    healthWarning = { link = "WarningMsg" },
  }
end

return core
