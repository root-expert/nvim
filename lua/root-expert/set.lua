vim.g.mapleader = " "

vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- Disable swap
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.updatetime = 200
vim.opt.signcolumn = "yes"

vim.opt.autocomplete = true

vim.keymap.set("n", "<leader>l", "<c-w>l", { desc = "Move to split to the right" })
vim.keymap.set("n", "<leader>h", "<c-w>h", { desc = "Move to split to the left" })
vim.keymap.set("n", "<leader>j", "<c-w>j", { desc = "Move to split to down" })
vim.keymap.set("n", "<leader>k", "<c-w>k", { desc = "Move to split to up" })
