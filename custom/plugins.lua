local plugins = {
  {
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy"
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    init = function ()
      require('leap').add_default_mappings()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    opts = {
      easing_function = "cubic"
    },
    config = function ()
      require('neoscroll').setup()
    end
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "python-lsp-server",
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "json",
        "python",
        "kotlin",
      }
    }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
    },
    extensions_list = { "themes", "terms", "fzf-native" },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                         -- the default case_mode is "smart_case"
      }
    }
  }
}
return plugins
