" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'cloudhead/neovim-fuzzy'
Plug 'iCyMind/NeoSolarized'

call plug#end()

colorscheme NeoSolarized
let g:solarized_contrast="high"
let g:solarized_visibility="high"
set background=dark

set nu

nnoremap <Leader>t :FuzzyOpen<CR>
nnoremap <F2> :set nonumber!<CR>
