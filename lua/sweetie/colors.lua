--- Sweetie colorscheme color palette
---@class colors
local colors = {}

---@class colors.palette
---@field dark table<string, string>
---@field light table<string, string>
colors.palette = {
  dark = {
    bg = "#2a2a3a",
    fg = "#fdfffd",

    bg_hl = "#37374c",

    bg_alt = "#232331",
    fg_alt = "#eeffee",

    grey = "#9a9a98",
    dark_grey = "#898989",
    red = "#e78888",
    orange = "#f2a15b",
    green = "#7bee57",
    teal = "#00f5c9",
    yellow = "#ffd62f",
    blue = "#6cb1f3",
    magenta = "#f8a1e1",
    violet = "#d4afff", -- "#cfa5fc",
    cyan = "#61d0fb",
  },
  light = {
    bg = "#dddde7",
    fg = "#202023",

    bg_hl = "#bbbbce",

    bg_alt = "#ccccda",
    fg_alt = "#18181a",

    grey = "#8989a9",
    dark_grey = "#78789d",
    red = "#b31919",
    orange = "#ae580e", -- Just in case we want to rollback to lighter version: #da6f12
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
