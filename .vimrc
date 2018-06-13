" Vundle package manager
filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'kbenzie/vim-fresh'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'mhinz/vim-startify'
Plugin 'nvie/vim-flake8'
Plugin 'python-mode/python-mode'
Plugin 'eugene-katsevman/vim-keeper'
Plugin 'mtth/scratch.vim'
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
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
  " switch off airline keymap
let g:airline_section_a='%#__accent_bold#%{airline#util#wrap(airline#parts#mode(),0)}%#__restore__#%{airline#util#append(airline#parts#crypt(),0)}%{airline#util#append(airline#parts#paste(),0)}%{airline#util#append(airline#parts#spell(),0)}%{airline#util#append("",0)}%{airline#util#append("",0)}%{airline#util#append(airline#parts#iminsert(),0)}'

" right margin
set colorcolumn=80
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
" fuzzy search
set path+=**

" netrw
let g:netrw_banner=0        " do not show help
let g:netrw_liststyle=3     " tree
let g:netrw_browse_split=4  " open in a separate window

" russian language
set keymap=russian-jcukenwin
let g:XkbSwitchEnabled = 1
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
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <C-d> <Delete>
nnoremap <C-up> dd<up>P
nnoremap <C-down> ddp
inoremap <C-up> <Esc>dd<up>Pi
inoremap <C-down> <Esc>ddpi
nnoremap H 0
nnoremap L $
nnoremap <C-L> :nohl<cr><C-L>
nnoremap <localleader>j :make<cr>

nnoremap <localleader>l :ls<cr>
nnoremap <localleader>0 :bf<cr>
nnoremap <localleader>n :bn<cr>
nnoremap <localleader>p :bp<cr>

" python snippets
iabbrev FOR for i in <lt>something>:<cr><tab>pass<up>
iabbrev IF if <lt>something>:<cr><tab>something<cr><backspace>else:<cr><tab>somethingelse

" pymode

let g:pymode = 1
let g:pymode_python = 'python3'

" align helpers
function! SaveColumn()
    let b:AlignToColumn = virtcol('.')
endfunction

nnoremap <localleader>a :call SaveColumn()<cr>

function! AppendMissingSpaces()
    let b:missing = b:AlignToColumn - virtcol('.')
    exec "normal! dw".b:missing."i " 
endfunction

nnoremap <localleader>s :call AppendMissingSpaces()<cr>

" debug syntax highlight 
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
