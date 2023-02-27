--- Sweetie colorscheme color palette
---@class colors
local colors = {}

---@class colors.palette
---@alias colors.palette table
colors.palette = {
  ---@field dark table<string, string>
  dark = {
    bg = "#2a2a3a",
    fg = "#fdfffd",

    bg_alt = "#232331",
    fg_alt = "#eeffee",

    grey = "#9e9e9e",
    dark_grey = "#969696",
    red = "#e87272",
    orange = "#f4b47c",
    green = "#91f582",
    teal = "#77f8e7",
    yellow = "#f7e277",
    blue = "#75daff",
    magenta = "#e9b5ff",
    violet = "#d8b5ff",
    cyan = "#b5e9ff",
  },
}
-- TODO: add light theme variant
colors.palette.light = colors.palette.dark

--- Get sweetie palette variant based on current background
---@param current_bg string Current Neovim background
---@return colors.palette
colors.get_palette = function(current_bg) return colors.palette[current_bg] end

return colors
