" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')




set ttymouse=xterm2
set mouse=a
syntax enable
set relativenumber 
set number
set wildignore+=node_modules/*
set laststatus=2                " always show statuslin

Plug '/usr/local/bin/fzf'
Plug 'preservim/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'

call plug#end()

autocmd vimenter * colorscheme gruvbox 

" https://github.com/preservim/nerdtree#how-can-i-open-a-nerdtree-automatically-when-vim-starts-up
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif