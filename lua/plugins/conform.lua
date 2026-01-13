return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        javascript = { "prettierd", "prettier", stop_after_first = true },

        sh = { "shfmt" },
        bash = { "shfmt" },

        yaml = { "yamlfmt" },
      },
    })
  end,
}
