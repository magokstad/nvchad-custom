local autocmd = vim.api.nvim_create_autocmd

vim.opt.guifont = "CodeNewRoman Nerd Font"

-- TODO: Fix tabs and spaces
-- vim.opt.tabstop = 2
-- vim.opt.shiftwidth = 2


-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
