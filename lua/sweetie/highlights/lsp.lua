local colors = require("sweetie.colors")
local current_bg = vim.opt.background:get()
local palette = colors.get_palette(current_bg)

--- LSP sweetie highlighting groups
---@class lsp
local lsp = {
  MsgUnderline = { sp = palette.green, underline = true },
  MoreMsgUnderline = { sp = palette.blue, underline = true },
  ErrorMsgUnderline = { sp = palette.red, underline = true },
  WarningMsgUnderline = { sp = palette.yellow, underline = true },

  LspCodeLens = { fg = palette.grey },
  LspHighlight = { bg = palette.bg_alt, bold = true },
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
}

return lsp
