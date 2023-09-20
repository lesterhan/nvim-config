local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pylsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false
        },
        flake8 = {
          enabled = true
        }
      },
      configrationSources = {'flake8'}
    }
  }
})
