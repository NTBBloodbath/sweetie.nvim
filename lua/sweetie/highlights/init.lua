--- Sweetie colorscheme highlighting groups definitions
---@class highlights
local highlights = {}

--- Set up highlighting groups
---@param config table Sweetie configuration
highlights.setup = function(config)
  local current_bg = vim.opt.background:get()
  local palette = require("sweetie.colors").get_palette(current_bg)

  --- Highlighting groups
  local groups = {
    require("sweetie.highlights.core").setup(palette),
    require("sweetie.highlights.lsp").setup(palette),
    require("sweetie.highlights.treesitter").setup(palette),
    require("sweetie.highlights.languages").setup(palette),
    require("sweetie.highlights.plugins").setup(palette, config),
  }

  --- Apply highlighting groups
  for _, group in ipairs(groups) do
    for hl_group, settings in pairs(group) do
      --- Add blend if pumblend is enabled
      if config.pumblend.enable then
        if vim.tbl_contains({ "Pmenu", "PmenuSel", "PmenuSbar", "PmenuThumb" }, hl_group) then
          settings.blend = config.pumblend.transparency_amount
        end
      end

      --- Apply hl groups overrides
      if vim.tbl_contains(vim.tbl_keys(config.overrides), hl_group) then
        settings = vim.tbl_extend("force", settings, config.overrides[hl_group])
      end

      vim.api.nvim_set_hl(0, hl_group, settings)
    end
  end

  --- Apply `:terminal` colors
  if config.terminal_colors then
    vim.g.terminal_color_0 = palette.bg
    vim.g.terminal_color_1 = palette.red
    vim.g.terminal_color_2 = palette.green
    vim.g.terminal_color_3 = palette.yellow
    vim.g.terminal_color_4 = palette.blue
    vim.g.terminal_color_5 = palette.violet
    vim.g.terminal_color_6 = palette.cyan
    vim.g.terminal_color_7 = palette.fg
    vim.g.terminal_color_8 = palette.grey
    vim.g.terminal_color_9 = palette.red
    vim.g.terminal_color_10 = palette.green
    vim.g.terminal_color_11 = palette.orange
    vim.g.terminal_color_12 = palette.blue
    vim.g.terminal_color_13 = palette.violet
    vim.g.terminal_color_14 = palette.cyan
    vim.g.terminal_color_15 = palette.white
    vim.g.terminal_color_background = palette.bg_alt
    vim.g.terminal_color_foreground = palette.fg_alt
  end
end

return highlights
