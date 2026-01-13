-- plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  config = function()
    ------------------------------------------------------------------
    -- Go (gopls)
    ------------------------------------------------------------------
    vim.lsp.config.gopls = {
      cmd = { "gopls", "serve" },

      root_dir = function(fname)
        return vim.fs.root(fname, { "go.mod", ".git" })
      end,

      on_attach = function(_, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
      end,

      settings = {
        gopls = {
          analyses = {
            unusedparams = false,
            fieldalignment = false,
          },
          staticcheck = false,
          gofumpt = true,
          buildFlags = { "-tags=integration" },
        },
      },

      init_options = {
        usePlaceholders = true,
      },
    }

    ------------------------------------------------------------------
    -- Python (pyright)
    ------------------------------------------------------------------
    vim.lsp.config.pyright = {
      root_dir = function(fname)
        return vim.fs.root(fname, {
          "pyproject.toml",
          "setup.py",
          "setup.cfg",
          "requirements.txt",
          ".git",
        })
      end,

      on_attach = function(_, bufnr)
        vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
      end,

      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
          },
        },
      },
    }

    ------------------------------------------------------------------
    -- Enable LSP servers
    ------------------------------------------------------------------
    vim.lsp.enable({
      "gopls",
      "pyright",
    })

    ------------------------------------------------------------------
    -- Go: format on save (only gopls)
    ------------------------------------------------------------------
    local go_fmt_grp = vim.api.nvim_create_augroup("GoLspFormat", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      group = go_fmt_grp,
      callback = function()
        vim.lsp.buf.format({
          async = false,
          timeout_ms = 5000,
          filter = function(client)
            return client.name == "gopls"
          end,
        })
      end,
    })
  end,
}

