return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      padding = true,        -- 注释符号与代码之间是否留空格
      sticky = true,         -- 注释后光标保持在原位置
      ignore = "^$",         -- 忽略空行
      toggler = {
        line = "gcc",        -- 行注释切换
        block = "gbc",       -- 块注释切换
      },
      opleader = {
        line = "gc",         -- 操作符形式行注释
        block = "gb",        -- 操作符形式块注释
      },
      mappings = {
        basic = true,        -- 启用 gcc / gbc
        extra = true,        -- 启用 gco / gcO / gcA
      },
    })
  end,
}

