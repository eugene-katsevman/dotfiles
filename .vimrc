" pathogen
filetype off
execute pathogen#infect()
filetype indent plugin on

set nocompatible
set modelines=0

" visuals
syntax enable
set number
set showmatch
set t_Co=256
let python_highlight_all=1
set hlsearch
colorscheme molokai

" editing 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set backspace=eol,indent,start
set incsearch

" other
set wildmenu
set ruler

" russian language
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" clipboard fun
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" funny stuff
let maplocalleader="\\"
let mapleader="-"

nnoremap <F9> :make <CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap H 0
noremap L $
nnoremap <C-L> :nohl<cr><C-L>
nnoremap <ALT-w> <C-w>w
inoremap <ALT-w> <Esc><C-w>w
