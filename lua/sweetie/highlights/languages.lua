local colors = require("sweetie.colors")
local current_bg = vim.opt.background:get()
local palette = colors.get_palette(current_bg)

--- Language-specific sweetie highlighting groups
---@class languages
local languages = {
  --- Markdown ---
  ----------------
  markdownCode = { fg = palette.grey },
  markdownCodeBlock = { fg = palette.grey },
  markdownH1 = { fg = palette.magenta, bold = true },
  markdownH2 = { fg = palette.blue, bold = true },
  markdownHeadingDelimiter = { fg = palette.cyan, bold = true },
  markdownLinkText = { link = "URL" },
}

return languages
