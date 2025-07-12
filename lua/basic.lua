-- utf8
vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- Keep 8 line around the cursor when moving
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- Use relative line number
vim.wo.number = true
vim.wo.relativenumber = true

-- Highlight the row
vim.wo.cursorline = true

-- Indent
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.expandtab = true
vim.bo.expandtab = true

-- Floding
vim.opt.foldenable = true
vim.opt.foldnestmax = 1
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 1

-- Cmd
vim.o.cmdheight = 2

-- Create backup files
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Display invisible characters
vim.o.list = false
vim.o.listchars = "space:."

-- Complete
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.pumheight = 10
vim.o.showtabline = 2
vim.o.showmode = false

-- clipboard
vim.opt.clipboard = "unnamedplus"
