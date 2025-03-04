require("mantou")
require("mantou.lazy")
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<Leader>y", '"+y', { noremap = true })
vim.keymap.set("n", "<Leader>Y", '"+Y', { noremap = true })
vim.keymap.set("v", "<Leader>y", '"+y', { noremap = true })
