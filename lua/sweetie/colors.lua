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

    bg_hl = "#37374c",

    bg_alt = "#232331",
    fg_alt = "#eeffee",

    grey = "#7e7e7e",
    dark_grey = "#5e5e5e",
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
  ---@field light table<string, string>
  light = {
    bg = "#dddde7",
    fg = "#202023",

    bg_hl = "#bbbbce",

    bg_alt = "#ccccda",
    fg_alt = "#18181a",

    grey = "#8989a9",
    dark_grey = "#78789d",
    red = "#b31919",
    orange = "#da6f12",
    green = "#287f0d",
    teal = "#47948a",
    yellow = "#957d09", -- Perhaps we should use #ae920a instead?
    blue = "#0c5090",
    magenta = "#a00c79",
    violet = "#9437ff",
    cyan = "#0b658e",
  },
}

--- Get sweetie palette variant based on current background
---@param current_bg string Current Neovim background
---@return colors.palette
colors.get_palette = function(current_bg) return colors.palette[current_bg] end

return colors
