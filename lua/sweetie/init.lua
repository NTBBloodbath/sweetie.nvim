-- Neovim Color File
-- Name:             sweetie
-- Maintainer:       https://github.com/NTBBloodbath
-- License:          GNU Public License v3 (GPLv3)

local sweetie = {}

local config = require("sweetie.config")
local highlights = require("sweetie.highlights")

sweetie.setup = function(opts)
  opts = opts or {}
  -- NOTE: I hate using global namespaces, however this seems to be the only workaround
  --       to get everything working as expected when modifying settings.
  _G.__sweetie_config = vim.tbl_deep_extend("force", config, opts)
end

sweetie.set = function() highlights.setup(_G.__sweetie_config or config) end

return sweetie

-- vim: sw=2:ts=2:sts=2:fdm=marker:
