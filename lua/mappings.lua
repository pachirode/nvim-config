require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

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

-- Clear highlights
vim.keymap.set("n", "<ESC>", vim.cmd.nohlsearch, {desc = "Clear highlights"})
-- Quick exit
vim.keymap.set({ "i", "x", "n", "s" }, "<C-q>", vim.cmd.quit, { desc = "Quit File" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", vim.cmd.write, { desc = "Save File" })
-- insert quick move
vim.keymap.set("i", "<C-h>", "<ESC>I", opt)
vim.keymap.set("i", "<C-l>", "<ESC>A", opt)

-- Code
vim.keymap.set("n", "<leader>gd", "<cmd>FzfLua lsp_definitions<CR>", { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>gr", "<cmd>FzfLua lsp_references<CR>", { desc = "Go to references" })
vim.keymap.set("n", "<leader>gi", "<cmd>FzfLua lsp_implementations<CR>", { desc = "Go to impement" })

-- Go
vim.keymap.set("n", "<leader>cgi", ":GoImports<CR>", { desc = "Fill Imports in Go" })
vim.keymap.set("n", "<leader>cge", ":GoIfErr<CR>", { desc = "Fill Error in Go" })
vim.keymap.set("n", "<leader>cgs", ":GoFillStruct<CR>", { desc = "Fill Struct in Go" })
vim.keymap.set("n", "<leader>cgc", ":GoFillSwitch<CR>", { desc = "Fill Switch in Go" })
vim.keymap.set("n", "<leader>cgt", ":GoAddTag<CR>", { desc = "Fill Tag in Go" })

-- FzF
vim.keymap.set("n", "<leader>fsb", "<cmd>FzfLua buffers<CR>", { desc = "fzf buffers" })
vim.keymap.set("n", "<leader>fss", "<cmd>FzfLua live_grep<CR>", { desc = "fzf live lines" })
vim.keymap.set("n", "<leader>fsf", "<cmd>FzfLua files<CR>", { desc = "fzf file" })
vim.keymap.set("n", "<C-f>", "<cmd>FzfLua lgrep_curbuf<CR>", { desc = "fzf buffer lines" })
