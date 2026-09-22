vim.g.mapleader = " "

vim.opt.number = true
-- vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.smartindent = false
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
vim.opt.complete = "o,.,w,b,u"
vim.opt.completeopt = "fuzzy,menu,menuone,noselect,popup"
vim.opt.pumheight = 10
vim.opt.pummaxwidth = 100
