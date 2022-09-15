local M = {}

-- M.autoformat = true

M.ui = {
  theme_toggle = { "tokyodark", "tokyonight" },
  theme = "tokyonight",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
