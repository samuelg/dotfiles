execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme summerfruit256
set number
set ruler

set expandtab
set tabstop=4
set shiftwidth=4

set foldmethod=indent

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd BufRead,BufNewFile *.md setlocal spell

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"allow for ionic html attributes
let g:syntastic_html_tidy_blocklevel_tags = [
\'ion-checkbox',
\'ion-content',
\'ion-delete-button',
\'ion-footer-bar',
\'ion-header-bar',
\'ion-infinite-scroll',
\'ion-item',
\'ion-list',
\'ion-modal-view',
\'ion-nav-back-button',
\'ion-nav-bar',
\'ion-nav-buttons',
\'ion-nav-view',
\'ion-option-button',
\'ion-pane',
\'ion-popover-view',
\'ion-radio',
\'ion-refresher',
\'ion-reorder-button',
\'ion-scroll',
\'ion-side-menu',
\'ion-side-menus',
\'ion-side-menu-content',
\'ion-slide',
\'ion-slide-box',
\'ion-tab',
\'ion-tabs',
\'ion-toggle',
\'ion-view',
\]

set colorcolumn=81

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
