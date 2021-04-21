execute pathogen#infect()
syntax on
filetype plugin indent on

" use vim settings instead of vi settings
set nocompatible

" display rules
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized
let g:airline_theme='solarized'
set number
set ruler
set hlsearch
set guifont=Fira\ Code:h16

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
map <Leader>r :NERDTreeFind<cr>

" show extra whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" show invisible characters
nmap <Leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" show line length limit
set colorcolumn=81

" fzf
set rtp+=/usr/local/opt/fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>
nnoremap <Leader>s :Rg<CR>

" ale
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" coc.nvim
let  g:coc_node_path = '/Users/samuelg/.nvm/versions/node/v14.16.0/bin/node'
