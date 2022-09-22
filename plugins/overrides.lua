local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "rust",
    "latex",
    "java",
    "fennel",
  },

  highlight = {
    additional_vim_regex_highlighting = true,
  },

  rainbow = {
    disable = {},
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      "#DC2626",
      "#DB9F24",
      "#2563EB",
      "#10A971",
      "#7C3AED",
      "#BB00BB",
    }
  }
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "jdtls",

    -- rust
    "rust-analyzer",

    -- latex
    "texlab",
    --"ltex-ls"
    -- "vale",
    --"tectonic"
  },
}

-- git support in nvimtree
M.nvimtree = {

  actions = {
    open_file = {
      quit_on_open = true,
    },
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
