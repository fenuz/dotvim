call pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
set modelines=0
let mapleader = ","
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set mouse=a

if version >= 703
  set relativenumber
  set undofile
  set colorcolumn=85
else
  set number
endif

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" text wrap
set wrap
set textwidth=79
set formatoptions=qrn1

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" theme
colorscheme mustang
set t_Co=256

" bindings
nnoremap <leader>a :Ack
nnoremap <leader>u :GundoToggle<CR>

" syntax highlighting
au BufRead,BufNewFile *.template set filetype=smarty

augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType smarty runtime! ftplugin/html/sparkup.vim
augroup END

" php debugger
let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 0
let g:dbgPavimPathMap = [['/cygdrive/c/','C:/'],]
