-- Neovim Color File
-- Name:             sweetie
-- Maintainer:       https://github.com/NTBBloodbath
-- License:          GNU Public License v3 (GPLv3)

local sweetie = {}

local config = require("sweetie.config")
local highlights = require("sweetie.highlights")

local user_config = config

sweetie.setup = function(opts)
  opts = opts or {}

  user_config = vim.tbl_deep_extend("force", user_config, opts)
end

sweetie.set = function() highlights.setup(user_config) end

return sweetie

-- vim: sw=2:ts=2:sts=2:fdm=marker:
