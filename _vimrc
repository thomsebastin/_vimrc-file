" THIS CONFIG WAS WRITTEN FOR GVIM ON MY WINDOWS 8.1

set nocompatible              " be iMproved, required
filetype off                  " required

" Put your non-Plugin stuff after this line
" This calls the pathogen file to pull plugins
execute pathogen#infect()

" To turn syntax highlighting on
syntax on
filetype plugin indent on    " required

" setting the colorscheme to slate
colorscheme molokai

" remove wrap
set nowrap

" To recognize .ejs as html
if has("autocmd")
    au BufRead,BufNewFile *.ejs setfiletype html
endif


" ==========Spaces & Tabs=============
"
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" ====================================
"

" setting the font type
set guifont=Lucida\ Console:h12

" Setting the shell type to bash. Very important to make it work on windows
set shell=bash

" Setting default window size gvim
set lines=37 columns=150

" ==========UI CONFIG=================
"
set number " Set numbers by default
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" ====================================

" ============SEARCHING===============

set incsearch           " search as characters are entered
"set hlsearch            " highlight matches

" ====================================

" Open nerdtree on startup
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Quit vim if nerdtree is the only tab present
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mapping 'ctrl+n' to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
