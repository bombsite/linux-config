:colorscheme desert 

set nocompatible
filetype indent plugin on

fixdel
syntax on 

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


