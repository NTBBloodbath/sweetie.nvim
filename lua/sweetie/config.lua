--- Sweetie colorscheme configuration
---@class config
local config = {
  pumblend = {
    enable = true,
    transparency_amount = 20,
  },
  palette = {
    dark = {},
    light = {},
  },
  overrides = {},
  integrations = {
    lazy = true,
    neorg = true,
    neogit = true,
    neomake = true,
    telescope = true,
  },
  cursor_color = true,
  terminal_colors = true,
}

return config
