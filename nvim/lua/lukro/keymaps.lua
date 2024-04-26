-- Utility
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Make <Space> the leader key
vim.g.mapleader = " "

-- Easily move visual selection up & down
keymap("x", "J", ":m '>+1<cr>gv=gv", opts)
keymap("x", "K", ":m '<-2<cr>gv=gv", opts)
