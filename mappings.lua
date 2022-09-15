local M = {}


-- FIXME fix somethinbg
M.general = {
  t = {
    -- toggle in terminal mode
    ["<C-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },

  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>up"] = {"<cmd> :PackerSync <CR>", "sync packer", opts={}},
    ["<leader>uf"] = {"<cmd> :!cargo-fmt <CR>", "format rust", opts={}},

    -- toggle in normal mode
    ["<C-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },

}

-- more keybinds!

return M
