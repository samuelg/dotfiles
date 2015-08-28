execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
colorscheme inkpot
set bg=dark
set number
set ruler

set guifont=Monaco:h12

set expandtab
set tabstop=4
set shiftwidth=4

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd BufRead,BufNewFile *.md setlocal spell

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"disable html checking for now
let g:syntastic_html_checkers=['']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:syntastic_javascript_checkers = ['eslint']

set colorcolumn=81

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
