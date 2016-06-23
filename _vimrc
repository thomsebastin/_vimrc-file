" THIS CONFIG WAS WRITTEN FOR GVIM ON MY WINDOWS 8.1

set nocompatible              " be iMproved, required
filetype off                  " required

" Put your non-Plugin stuff after this line
" This calls the pathogen file to pull plugins
execute pathogen#infect()
:Helptags "needed for updating helpdocs

" To turn syntax highlighting on
syntax on
filetype plugin indent on    " required
filetype plugin on    " required by nerd commenter


" setting the colorscheme
colorscheme codeschool

" remove wrap
set nowrap

" To recognize .ejs as html
if has("autocmd")
    au BufRead,BufNewFile *.ejs setfiletype html
endif


" ==========Spaces & Tabs=============
"
set tabstop=2       " number of visual spaces per TAB
set shiftwidth=2    " space after indentation - important
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" ====================================
"
"
"folding settings
set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
let javaScript_fold = 1         " JavaScript

"some additional settings for javascript
let g:javascript_enable_domhtmlcss = 1

" setting the font type
set guifont=Lucida\ Console:h11

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
set hidden              " to preserve undo history on buffer switch

" ====================================

" ============SEARCHING===============

set incsearch           " search as characters are entered
"set hlsearch            " highlight matches

" ====================================

" Settings for angular js syntax support
let g:used_javascript_libs = 'underscore,backbone,angularjs'
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1 " set to 0 to disable

" Open nerdtree on startup

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Quit vim if nerdtree is the only tab present
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Mapping 'ctrl+n' to toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" options for js syntax higlighting
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 1

" settings for controlp plugi
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"for setting shortcut for search and replace
"ctrl+r in visual mode and then type your replace string
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
