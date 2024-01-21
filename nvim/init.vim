"Scroll the page as the cursor moves up and down
set scrolloff=8

"Line number settings
set number
set relativenumber

"Tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"Remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR> 
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <C-k> :cnext<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

"Color scheme
colorscheme catppuccin-mocha

