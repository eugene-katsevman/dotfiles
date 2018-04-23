" Vundle package manager
filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'altercation/vim-colors-solarized'
Plugin 'lyokha/vim-xkbswitch'
call vundle#end()

filetype indent plugin on

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
let g:XkbSwitchEnabled = 1
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

nnoremap H 0
noremap L $
nnoremap <C-L> :nohl<cr><C-L>
nnoremap <ALT-w> <C-w>w
inoremap <ALT-w> <Esc><C-w>w
let g:airline_section_a='%#__accent_bold#%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append(airline#parts#spell(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'
