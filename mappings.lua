local M = {}


-- FIXME fix somethinbg
M.general = {
  t = {
    -- WARN: Not necessary anymore
    -- toggle in terminal mode
    -- ["<C-i>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },
  },

  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>up"] = {"<cmd> :PackerSync <CR>", "sync packer", opts={}},
    ["<leader>uf"] = {"<cmd> :!cargo-fmt <CR>", "format rust", opts={}},
    ["<leader>ut"] = {"<cmd> :lua require('undotree').toggle() <CR>", "toggle undotree", opts={noremap = true, silent = true}},
-- vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true })

    -- WARN: Not necessary anymore
    -- toggle in normal mode
    -- ["<C-i>"] = {
    --   function()
    --     require("nvterm.terminal").toggle "float"
    --   end,
    --   "toggle floating term",
    -- },
  },

}

-- more keybinds!

return M
