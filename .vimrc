set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

  " let Vundle manage Vundle
  "  " required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'



set nu
execute pathogen#infect()
syntax on
colorscheme molokai
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql
filetype plugin indent on
set backspace=indent,eol,start
set laststatus=2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Setting fonts for GUI mode
if has("gui_running")
  if has("gui_gtk2")
     set guifont=Monaco\ 12
  elseif has("gui_macvim")
     set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
     set guifont=Consolas:h11:cANSI
 endif
endif
