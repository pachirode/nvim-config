require "nvchad.mappings"

-- local map key variables
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- leadkey (blank)
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Split windows
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- Close current
map("n", "sc", "<C-w>c", opt)
-- Close other
map("n", "so", "<C-w>o", opt)
-- Jump between windows
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
-- Modefiy size
map("n", "<Left>", ":vertical resize -5<CR>", opt)
map("n", "<Right>", ":vertical resize +5<CR>", opt)
map("n", "<Down>", ":resize +5<CR>", opt)
map("n", "<Up>", ":resize -5<CR>", opt)

-- Terminal setting
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)



