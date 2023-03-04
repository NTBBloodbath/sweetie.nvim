--- Language-specific sweetie highlighting groups
---@class languages
local languages = {}

languages.setup = function(palette)
  return {
    --- Java ---
    ------------
    ["@type.java"] = { fg = palette.orange, italic = true },
    ["@type.qualifier.java"] = { fg = palette.orange, italic = true },

    --- Markdown ---
    ----------------
    markdownCode = { fg = palette.grey },
    markdownCodeBlock = { fg = palette.grey },
    markdownH1 = { fg = palette.magenta, bold = true },
    markdownH2 = { fg = palette.blue, bold = true },
    markdownHeadingDelimiter = { fg = palette.cyan, bold = true },
    markdownLinkText = { link = "URL" },
  }
end

return languages
