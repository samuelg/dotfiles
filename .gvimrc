execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
colorscheme guardian
set number
set ruler

set guifont=Monaco:h13

set expandtab
set tabstop=4
set shiftwidth=4

set foldmethod=indent

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

set colorcolumn=81

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
