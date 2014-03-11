execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme slate
set number

set guifont=Monaco:h13
set t_Co=256

set expandtab
set tabstop=4
set shiftwidth=4

set colorcolumn=81

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
