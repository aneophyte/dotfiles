syntax on
set hidden
set history=1000
set wildmenu
set ignorecase
set smartcase
"set title
set scrolloff=3
set ruler
set backspace=indent,eol,start
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set nu
set rnu
set nocompatible              " be iMproved, required
filetype off                  " required
set mouse=a
set ttyfast
map ,n :NERDTreeToggle<CR>
map ,N :NERDTreeFind<CR>
set laststatus=2

function! Auto_complete_string()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
    end
endfunction

function! Auto_complete_opened()
    if pumvisible()
        return "\<Down>"
    end
    return ""
endfunction

inoremap <expr> <Nul> Auto_complete_string()
inoremap <expr> <C-Space> Auto_complete_string()

set cursorline

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'udalov/kotlin-vim'
" Plug 'flowtype/vim-flow'
Plug 'scrooloose/nerdtree'
"Plug 'Shougo/denite.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'raichoo/purescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'maksimr/vim-jsbeautify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'valloric/MatchTagAlways'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Galooshi/vim-import-js'
"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'sbdchd/neoformat'
"Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins' }
" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just
" :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" Put your non-Plug stuff after this line

" Beautify
let g:jsx_ext_required = 0

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" Gitgutter
set updatetime=200
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['standard']

call neomake#configure#automake('w')
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = 'eslint_d'
"let g:neomake_javascript_enabled_makers = ['standard', 'flow']
"let g:neomake_jsx_enabled_makers = ['standard', 'flow']

" Neomake
autocmd! BufWritePost * Neomake
hi NeomakeErrorSign ctermbg=1 ctermfg=0
hi NeomakeWarningSign ctermbg=3 ctermfg=0
hi NeomakeMessageSign ctermbg=0 ctermfg=7
hi NeomakeInfoSign ctermbg=2 ctermfg=0

let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {
 \   'text': '⚠',
 \   'texthl': 'NeomakeWarningSign',
 \ }
let g:neomake_message_sign = {
  \   'text': '➤',
  \   'texthl': 'NeomakeMessageSign',
  \ }
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
let g:neomake_highlight_columns = 0

" Standard format on save
"autocmd bufwritepost *.js silent !standard --fix %
"set autoread

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2 expandtab

" Match tags
let g:mta_filetypes = {'javascript.jsx': 1,
\ 'html' : 1,
\ 'xhtml' : 1,
\ 'xml' : 1,
\ 'jinja' : 1,}

let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'monochrome'
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd guibg=235 ctermbg=235
hi IndentGuidesEven guibg=236 ctermbg=236
let g:indent_guides_guide_size = 1
let g:indent_guides_size_level = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

colorscheme default

let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTreeFind<CR>

" Denite bindings
"nnoremap <C-p> :Denite file_rec<cr>
"nnoremap <Leader>/ :Denite grep:.<cr>
nnoremap <C-Space> :FZF<cr>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1

"let g:prettier#autoformat = 1
"autocmd BufWritePre *ts,*tsx,*.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync
"let g:prettier#config#bracket_spacing = 'true'
"let g:prettier#config#jsx_bracket_same_line = 'false'
"let g:prettier#config#trailing_comma = 'none'
"let g:prettier#config#parser = 'babylon'
"let g:prettier#config#config_precedence = 'cli-override'
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript setlocal formatprg=prettier_dnc\ --local-only\ --pkg-conf\ --fallback
    autocmd BufWritePre *.js undojoin | Neoformat
augroup END

" Use formatprg when available
let g:neoformat_try_formatprg = 1
" https://github.com/sbdchd/neoformat/issues/25
let g:neoformat_only_msg_on_error = 1
