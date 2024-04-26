-- Theme
vim.o.background = "light"

-- Line numbers
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Make the line numbers relative

-- Tabs
vim.o.tabstop = 4 -- A <Tab> character looks like 4 spaces
vim.o.expandtab = true -- Pressing the <Tab> key will insert spaces instead of a <Tab> character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a <Tab> character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- NetRW
-- Show relative numbers. Show no cursor line (= horizontal line under the selected line)
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro nocursorline"
