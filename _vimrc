set nocompatible              " be iMproved, required
filetype off                  " required

" Put your non-Plugin stuff after this line
" This calls the pathogen file to pull plugins
execute pathogen#infect()

" To turn syntax highlighting on
syntax on
filetype plugin indent on    " required

" setting the colorscheme to slate
colorscheme slate

" remove wrap
set nowrap

" setting the font type
set guifont=Lucida\ Console:h12

" Setting the shell type to bash. Very important to make it work on windows
set shell=bash

" Setting default window size gvim
set lines=37 columns=150

" Set numbers by default
set number

" Open nerdtree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mapping 'ctrl+n' to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
