-- Neovim Color File
-- Name:             sweetie
-- Maintainer:       https://github.com/NTBBloodbath
-- License:          GNU Public License v3 (GPLv3)

local sweetie = {}

local default_config = require("sweetie.config")
local highlights = require("sweetie.highlights")

if not vim.g.sweetie or vim.g.sweetie <= 0 then
  vim.g.sweetie = default_config
end

sweetie.set = function()
  highlights.setup()
end

return sweetie

-- vim: sw=2:ts=2:sts=2:fdm=marker:
