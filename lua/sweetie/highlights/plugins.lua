local colors = require("sweetie.colors")
local current_bg = vim.opt.background:get()
local palette = colors.get_palette(current_bg)

--- Plugins sweetie highlighting groups
---@class plugins
local plugins = {}

--- Set up highlighting groups for plugins
---@param config
---@return table
plugins.setup = function(config)
  local highlights = {}
  local integrations = config.integrations

  if integrations.neorg then
    highlights = vim.tbl_extend("force", highlights, {
      NeorgMarkupVerbatim = { link = "@comment" },
      -- Colors are for nested quotes
      Red = { fg = palette.red },
      Blue = { fg = palette.blue },
      Green = { fg = palette.green },
      Yellow = { fg = palette.yellow },
      Orange = { fg = palette.orange },
    })
  end
  if integrations.telescope then
    highlights = vim.tbl_extend("force", highlights, {
      TelescopeNormal = { fg = palette.fg },
      TelescopeBorder = { fg = palette.teal },
      TelescopePrompt = { link = "TelescopeNormal" },
      TelescopePromptBorder = { link = "TelescopeBorder" },
      TelescopePromptPrefix = { fg = palette.blue },
      TelescopeResultsBorder = { link = "TelescopeBorder" },
      TelescopePreviewBorder = { link = "TelescopeBorder" },
      TelescopeMatching = { fg = palette.violet, bold = true },
      TelescopeSelection = { link = "VisualBold" },
      TelescopeSelectionCaret = { fg = palette.blue },
    })
  end

  return highlights
end

return plugins
