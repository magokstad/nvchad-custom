local overrides = require "custom.plugins.overrides"

-- My own little touch, kinda cool
local rngsplash = require "custom.plugins.splash-ascii-rng"

return {

  -- TODO: Move overrides to overrides
  -- TODO: checkout neogit


  ["vim-crystal/vim-crystal"] = {},

  ["wakatime/vim-wakatime"] = {},

  -- ["rktjmp/hotpot.nvim"] = {},

  ["nvim-lua/plenary.nvim"] = {},

  ["jiaoshijie/undotree"] = {
    config = function()
      require('undotree').setup()
    end,
    requires = {
      "nvim-lua/plenary.nvim",
    },
  },

  ["gpanders/editorconfig.nvim"] = {},


  ["nvim-neorg/neorg"] = {
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.norg.dirman"] = {
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
              }
            }
          },
          ["core.export"] = {},
          ["core.norg.completion"] = {
            config = {
              engine = "nvim-cmp"
            }
          }
        }
      }
    end,
    requires = "nvim-lua/plenary.nvim"
  },

  ["windwp/nvim-autopairs"] = {
    disable = false,
    override_options = {
      enable_check_bracket_line = true,
    },
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = {
      header = {
        val = rngsplash,
      }
    }
  }, -- enables dashboard


  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "block",
      },
    },
  },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },


  ["lervag/vimtex"] = {},


  -- ["nvim-treesitter/nvim-treesitter"] = {
  --   config = function ()
  --     require("nvim-treesitter")
  --   end
  --     rainbow = {enable = true}
  -- },

  ["folke/which-key.nvim"] = {
    disable = false
  },

  ["folke/trouble.nvim"] = {
    config = function ()
      require("trouble").setup()
    end
  },

  ["folke/todo-comments.nvim"] = {
    disable = false,
    config = function ()
      require("todo-comments").setup {
        colors = {
          error = {
            -- "DiagnosticError",
            -- "ErrorMsg",
            "#DC2626",
          },
          warning = {
            -- "DiagnosticWarning",
            -- "WarningMsg",
            "#FBBF24"
          },
          info = {
            -- "DiagnosticInfo",
            "#2563EB" },
          hint = {
            -- "DiagnosticHint",
            "#10B981" },
          default = {
            -- "Identifier",
            "#7C3AED"
          },
          test = {
            -- "Identifier",
            "#FF00FF" }
        },
        keywords = {
          TEST = { icon = "??? ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
      }
    end
    -- FIXME: this is a fixme
    -- HACK: this is a hack
    -- TODO: this is a todo
    -- NOTE: this is a note
    -- PERF: this is a perf
    -- TEST: this is a test
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
