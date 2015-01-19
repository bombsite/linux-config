source ~/.vim/cscope_map.vim
:colorscheme desert 

set nocompatible
filetype indent plugin on

syntax on 

set backspace=2

set sw=4
set tabstop=4
set softtabstop=4
set expandtab
set smartindent

set wildmenu
set showcmd

set number
set cursorline

set lazyredraw

set showmatch

set incsearch
set hlsearch


" set up for gui/console
if has('gui_running')
    set background=light
else
    set background=dark
endif

" set up ctags
set tags=./tags;/
set autochdir

" Clear last search highlighting
map <Space> :noh<cr>
