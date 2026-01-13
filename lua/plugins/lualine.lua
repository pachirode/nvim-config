return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  event = "VeryLazy",
  opts = {
    options = {
      globalstatus = true,
      section_separators = "",
      component_separators = "",
    },

    extensions = { "lazy", "mason", "nvim-dap-ui", "overseer", "quickfix" },

    sections = {
      -- 左侧：模式 + Git
      lualine_a = {
        { "mode", fmt = function(str) return str:sub(1, 1) end },
      },

      lualine_b = {
        { "branch", icon = "" },
        {
          "diff",
          symbols = { added = "+", modified = "~", removed = "-" },
        },
      },

      -- 中间：文件信息（你原来的配置）
      lualine_c = {
        { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
        "filename",
      },

      -- 右侧：任务 / LSP
      lualine_x = {
        "overseer",
        {
          function()
            local clients = vim.lsp.get_clients({ bufnr = 0 })
            if #clients == 0 then
              return ""
            end
            return " LSP"
          end,
        },
      },

      -- 进度 + 光标位置（保持原样）
      lualine_y = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
      },

      -- 时钟（保持原样）
      lualine_z = {
        function()
          return " " .. os.date("%R")
        end,
      },
    },
  },
}

