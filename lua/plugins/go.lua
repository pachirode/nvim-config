return {
  "ray-x/go.nvim",
  dependencies = {
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  ft = { "go", "gomod" },
  build = function()
    require("go.install").update_all_sync()
  end,
  config = function()
    require("go").setup({
      diagnostic = {
        underline = true,
        virtual_text = { spacing = 2, prefix = "" },
        signs = { "", "", "", "" },
      },
    })

    -- 新 LSP API
    vim.lsp.config.gopls = {
      settings = {
        gopls = {
          gofumpt = true,
          analyses = {
            unusedparams = true,
          },
        },
      },
    }

    vim.lsp.enable("gopls")

    -- 保存前格式化
    local grp = vim.api.nvim_create_augroup("GoFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      group = grp,
      callback = function()
        require("go.format").goimports()
      end,
    })
  end,
}

