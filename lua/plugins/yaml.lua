return {
  "neovim/nvim-lspconfig",
  ft = { "yaml" },
  config = function()
    vim.lsp.config.yamlls = {
      settings = {
        yaml = {
          keyOrdering = false,
          schemas = {
            kubernetes = "*.yaml",
          },
        },
      },
    }

    vim.lsp.enable("yamlls")
  end,
}

