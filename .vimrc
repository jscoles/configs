call pathogen#infect()
set nocompatible
syntax on
set incsearch
set ignorecase
set smartcase

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

filetype plugin on
filetype indent on

runtime macros/matchit.vim

set autoindent
set smartindent

set nu

"nnoremap <silent> <CR> nohlsearch<CR>

set exrc " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
if has("mouse")
  set mouse=a
endif

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

let g:CommandTMaxHeight=25
let g:CommandTMatchWindowReverse=1

" fugitive.vim shortcuts
nnoremap g* :Ggrep <cword><cr><cr>:copen<cr>
