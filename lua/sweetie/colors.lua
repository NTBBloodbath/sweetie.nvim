--- Sweetie colorscheme color palette
---@class colors
local colors = {}

---@class colors.palette
---@field dark { [string]: string }[]
---@field light { [string]: string }[]
colors.palette = {
  dark = {
    bg = "#2a2a3a",
    fg = "#d3d7de",

    bg_hl = "#303040", -- slightly lighter shade: "#373b48",

    bg_alt = "#25252f", -- slightly darker shade: "#24242e",
    fg_alt = "#bdbdbd",

    grey = "#798399",
    dark_grey = "#5f697a",

    red = "#d75f4a",
    orange = "#e7a06a",
    green = "#89c252",
    teal = "#92d3c5",
    yellow = "#e7d482",
    blue = "#73a3f3",
    magenta = "#c592e8", -- slightly darker shade: #a079d0
    violet = "#b094e2",
    cyan = "#a2c4ff",
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

---Get sweetie palette variant based on current background
---@param current_bg string Current Neovim background
---@return colors.palette
colors.get_palette = function(current_bg) return colors.palette[current_bg] end

return colors
