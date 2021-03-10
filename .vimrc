execute pathogen#infect()
syntax on
filetype plugin indent on

" use vim settings instead of vi settings
set nocompatible

" display rules
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:airline_theme='solarized'
set number
set ruler
set hlsearch

" spacing rules
set expandtab
set tabstop=4
set shiftwidth=4

" file type specific
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd BufRead,BufNewFile *.md setlocal spell

" nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" show extra whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" show invisible characters
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" show line length limit
set colorcolumn=81

" setup fzf
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

" TODO add syntax checker
