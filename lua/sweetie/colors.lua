--- Sweetie colorscheme color palette
---@class colors
local colors = {}

---@class colors.palette
---@field dark table<string, string>
---@field light table<string, string>
colors.palette = {
  dark = {                 -- Prev col | Contrast
    bg = "#2a2a3a",        -- #2a2a3a  \ New 16.42
    fg = "#fdfffd",        -- #fdfffd  / Old 14.02

    bg_hl = "#37374c",     -- #37374c  \ 11.53 | 13.15

    bg_alt = "#232331",    -- #232331  \ New 18.18
    fg_alt = "#eeffee",    -- #eeffee  / Old 14.88

    grey = "#929292",      -- #7e7e7e  \ 03.47 | 05.30
    dark_grey = "#7d7d7d", -- #5e5e5e  / 02.17 | 04.01
    red = "#e78888",       -- #e87272  \ 04.75 | 06.50
    orange = "#f4b47c",    -- #f4b47c  / 07.83 | 09.17
    green = "#85ff72",     -- #91f582  \ 10.46 | 13.00
    teal = "#70ffec",      -- #77f8e7  / 10.98 | 13.52
    yellow = "#ffe24f",    -- #f7e277  \ 10.80 | 12.98
    blue = "#6ad7ff",      -- #75daff  / 08.87 | 10.04
    magenta = "#e7aeff",   -- #e9b5ff  \ 08.40 | 09.35
    violet = "#d5b0ff",    -- #d8b5ff  / 08.03 | 09.02
    cyan = "#90deff",      -- #b5e9ff  \ 10.78 | 11.06
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
