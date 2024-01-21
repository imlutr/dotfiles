-- Scroll the page as the cursor moves up and down
vim.o.scrolloff = 8

-- Line number settings
vim.wo.number = true
vim.wo.relativenumber = true

-- Tab settings
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Remaps
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>pv', ':Vex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':GFiles<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pf', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':cprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':cnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>Y', 'gg"+yG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })

-- lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim plugins
require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "williamboman/mason.nvim",
})

-- Color scheme
vim.cmd([[colorscheme catppuccin-mocha]])
