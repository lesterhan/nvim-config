local plugins = {
  {
    "ggandor/leap.nvim",
    config = function ()
      require('leap').add_default_mappings()
    end
  },
  {
    "karb94/neoscroll.nvim",
    config = function ()
      require('neoscroll').setup()
    end
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
  }
}
return plugins
