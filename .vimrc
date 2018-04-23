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
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
  " switch off airline keymap
let g:airline_section_a='%#__accent_bold#%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append(airline#parts#spell(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'

" editing 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set backspace=eol,indent,start
set incsearch

set nobackup
set noswapfile
set hidden         " allow switch buffers without saving them

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

" keyboard remap fun
let maplocalleader="\\"
let mapleader="-"

nnoremap <F9> :make <CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv <silent> :source $MYVIMRC<cr>

nnoremap <C-up> dd<up>P
nnoremap <C-down> ddp
inoremap <C-up> <Esc>dd<up>Pi
inoremap <C-down> <Esc>ddpi
nnoremap H 0
noremap L $
nnoremap <C-L> :nohl<cr><C-L>


" python snippets
iabbrev FOR for i in <lt>something>:<cr><tab>pass<up>
iabbrev IF if <lt>something>:<cr><tab>something<cr><backspace>else:<cr><tab>somethingelse

