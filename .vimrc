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
set backspace=indent,eol,start

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

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
"let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

let g:CommandTMaxHeight=25
let g:CommandTMatchWindowReverse=1

" fugitive.vim shortcuts
nnoremap g* :Ggrep <cword><cr><cr>:copen<cr>

" shell shortcuts

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
