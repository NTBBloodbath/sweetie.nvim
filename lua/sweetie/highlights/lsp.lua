--- LSP sweetie highlighting groups
---@class lsp
local lsp = {}

lsp.setup = function(palette)
  return {
    MsgUnderline = { sp = palette.green, undercurl = true },
    MoreMsgUnderline = { sp = palette.blue, undercurl = true },
    ErrorMsgUnderline = { sp = palette.red, undercurl = true },
    WarningMsgUnderline = { sp = palette.yellow, undercurl = true },

    LspCodeLens = { fg = palette.grey },
    LspHighlight = { bg = palette.bg_alt, bold = true },
    LspInlayHint = { fg = palette.grey, bold = true },
    LspReferenceText = { link = "LspHighlight" },
    LspReferenceRead = { link = "LspHighlight" },
    LspReferenceWrite = { link = "LspHighlight" },
    LspSignatureActiveParameter = { link = "Constant" },

    DiagnosticHint = { link = "Msg" },
    DiagnosticInfo = { link = "TextMuted" },
    DiagnosticWarn = { link = "WarningMsg" },
    DiagnosticError = { link = "ErrorMsg" },
    DiagnosticSignHint = { link = "Msg" },
    DiagnosticSignInfo = { link = "TextMuted" },
    DiagnosticSignWarn = { link = "WarningMsg" },
    DiagnosticSignError = { link = "ErrorMsg" },
    DiagnosticFloatingHint = { link = "Msg" },
    DiagnosticFloatingInfo = { link = "TextMuted" },
    DiagnosticFloatingWarn = { link = "WarningMsg" },
    DiagnosticFloatingError = { link = "ErrorMsg" },
    DiagnosticUnderlineHint = { link = "MsgUnderline" },
    DiagnosticUnderlineInfo = { link = "MoreMsgUnderline" },
    DiagnosticUnderlineWarn = { link = "WarningMsgUnderline" },
    DiagnosticUnderlineError = { link = "ErrorMsgUnderline" },
    DiagnosticVirtualTextHint = { link = "Msg" },
    DiagnosticVirtualTextInfo = { link = "TextMuted" },
    DiagnosticVirtualTextWarn = { link = "WarningMsg" },
    DiagnosticVirtualTextError = { link = "ErrorMsg" },

    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "Enum" },
    ["@lsp.type.class"] = { link = "Class" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.struct"] = { link = "Structure" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.parameter"] = { link = "@identifier" },
    ["@lsp.type.decorator"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "Structure" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
  }
end

return lsp
