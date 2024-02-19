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
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.class"] = { link = "Structure" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.struct"] = { link = "@constructor" },
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.parameter"] = { link = "@identifier" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.interface"] = { link = "@constructor" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.unresolvedReference"] = { link = "@error" },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }
end

return lsp
