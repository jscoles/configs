" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'cloudhead/neovim-fuzzy'
Plug 'iCyMind/NeoSolarized'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'vim-airline/vim-airline'
Plug 'mxw/vim-jsx'
Plug 'neomake/neomake'

call plug#end()

colorscheme NeoSolarized
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark

let g:airline_powerline_fonts=1

autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_verbose=3
let g:neomake_open_list = 2

" let g:neomake_eslint_maker = {
"	\ 'exe': './node_modules/.bin/eslint',
"	\ 'args': ['--rulesdir ~/co/manage/js_infra/eslint_rules/'],
"	\ 'errorformat': '%f:%l:%c: %m',
"	\ }
let g:neomake_javascript_eslint_exe = './node_modules/.bin/eslint'
let g:neomake_javascript_enabled_makers = ['eslint']

set nu
set nohls!

nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gh <C-w>h
nnoremap gl <C-w>l

set pastetoggle=<C-P>

"shortcut for stripping whitespace from files
nnoremap <C-w>w :%s/\s\+$//e<CR>

nnoremap <Leader>t :FuzzyOpen<CR>
nnoremap <F2> :set nonumber!<CR>
nnoremap <F3> :set hls!<CR>

nnoremap <Leader>b :CtrlPBuffer<CR>

if has("mouse")
  set mouse=a
endif

" fugitive.vim shortcuts
nnoremap g* :Ggrep <cword><cr><cr>:copen<cr>
nnoremap ggr :Ggrep<space>

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
