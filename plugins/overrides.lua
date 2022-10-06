local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "vue",
    "rust",
    "latex",
    "java",
    "fennel",
    "python",
    "clojure",
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
    "vetur-vls",
    "tailwindcss-language-server",


    "jdtls",

    -- rust
    "rust-analyzer",

    -- latex
    "texlab",

    -- python
    "jedi_language_server",

    -- clojure
    "clojure-lsp"

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
