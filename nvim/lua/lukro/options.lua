-- Theme
vim.o.background = "light"

-- Line numbers
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Make the line numbers relative

-- Tabs
vim.o.tabstop = 4 -- A <Tab> character looks like 4 spaces
vim.o.expandtab = true -- Pressing the <Tab> key will insert spaces instead of a <Tab> character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a <Tab> character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- NetRW
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro nocursorline" -- Relative line numbers, no cursor line
vim.g.netrw_banner = 0 -- No 7-lines banner at the top

