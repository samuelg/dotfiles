execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme darkblue
set number

set guifont=Monaco:h13
set t_Co=256

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
