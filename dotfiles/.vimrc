call pathogen#infect()
Helptags
set nocompatible
set noswapfile
set incsearch
set ignorecase
set smartcase

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=10
filetype plugin on
filetype indent on

runtime macros/matchit.vim

set autoindent
set smartindent

set nu

"nnoremap <silent> <CR> nohlsearch<CR>
"remap increment number for screen/tmux friendlyness
nnoremap <C-c> <C-a>

"shortcut for stripping whitespace from files
nnoremap <C-w>w :%s/\s\+$//e<CR>

noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gh <C-w>h
nnoremap gl <C-w>l

set pastetoggle=<C-P>

set exrc " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
if has("mouse")
  set mouse=a
endif

let &t_Co=256
syntax enable
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
call togglebg#map("<F4>")
set t_ut=

nnoremap <F2> :set nonumber!<CR>
nnoremap <F3> :set hls!<CR>

let g:ctrlp_map='<Leader>t'
nnoremap <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_max_files=0
let g:ctrlp_lazy_update=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = {
 \ 'dir': '\.git$\|\.svn$\|log\tmp$\|source_maps$\|jetty$\|node_modules$',
 \ 'file': '\.exe$\|\.so$|\.min\.js$\|.pack.js$\|.min\.css$\|.cert$\|.patch'
 \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" fugitive.vim shortcuts
nnoremap g* :Ggrep <cword><cr><cr>:copen<cr>
nnoremap gr :Ggrep<space>

" MRU.vim shortcuts
nnoremap <Leader>m :MRU<cr>

" Other shortcuts
nnoremap td :tabe %<cr>

nnoremap <Leader>r :exe "!script/hydra.rb %:" . line(".")<cr>

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


" set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
let g:airline_powerline_fonts=1

let MRU_EXCLUDE_FILES = '^git-.*)'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1

let g:javascript_enable_domhtmlcss=1
