return {
  "neovim/nvim-lspconfig",
  ft = { "python" },
  config = function()
    vim.lsp.config.pyright = {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            autoSearchPaths = true,
          },
        },
      },
    }

    vim.lsp.enable("pyright")

    -- 保存前格式化
    local grp = vim.api.nvim_create_augroup("PythonFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.py",
      group = grp,
      callback = function()
        vim.cmd("silent !isort %")
        vim.cmd("silent !black %")
      end,
    })
  end,
}

