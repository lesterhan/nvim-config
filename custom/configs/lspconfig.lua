local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

local my_on_attach = function (client, bufnr)
    on_attach(client, bufnr)
  end


lspconfig.pylsp.setup({
  on_attach = my_on_attach,
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

