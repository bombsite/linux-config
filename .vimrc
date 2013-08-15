set nocompatible
source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim

fixdel

set sw=4
set ts=4
set expandtab
set smartindent
"set nowrap
"set ic
"set diffexpr=MyDiff()

map <F3> :tn<ENTER>
map <S-F3> :tp<ENTER>

if $TERM == "xterm-256color"
  set t_Co=256
endif

syntax enable
colorscheme 256-jungle 

" set up for gui/console
if has('gui_running')
    set background=light
else
    set background=dark
endif

" color desert

" Find tags file if possible
python << END_PY
import vim
import os

mypath=os.getcwd()
while 1:
    checktags = os.path.join(mypath, "tags")
    if os.path.exists(checktags):
        vim.command("set tags=" + checktags)
        break
    # Go to the parent directory, stopping if we hit the root
    newpath = os.path.dirname(mypath)
    if newpath == mypath or newpath == "/usr2":
        break
    mypath = newpath
END_PY

" function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction

