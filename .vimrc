" filetype plugin indent
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set foldenable
set foldmethod=indent
set autoindent
set spell spelllang=en_us
set clipboard=unnamedplus

" highlight Folded guibg=white
" hi Folded guibg=grey
"highlight Folded ctermbg=White ctermfg=Red
" highlight Comment ctermbg=Yellow ctermfg=White

" cursor sdl 
" set cursorline
" no wrap lines
set nowrap
" show number bar at the left
set number
set hlsearch

" colorscheme gruvbox
set background=dark
colorscheme github
" colorscheme dracula

" for dracula theme
syntax on:

" Vim key mapping for emmet-vim
" https://stackoverflow.com/questions/34822074/vim-key-mapping-for-emmet-vim
" https://github.com/mattn/emmet-vim
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,js EmmetInstall
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" Add keyboard shortcuts
let g:user_emmet_expandabbr_key='<C-e>'
imap <expr> <C-e>  emmet#expandAbbrIntelligent("\<C-e>")
" map <C-S-Tab> gT

" key mapping
no <up> ddkP
no <right> :tabnext <CR>
no <down> ddp
no <left> :tabprevious <CR>
map <F2> :set number <CR>
map <F3> :set relativenumber <CR>
map <F4> :set spell spelllang=en_us <CR>
map <F5> :set nospell <CR>


nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

function! LineComplition()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-x>\<c-l>"
    endif
endfunction
" inoremap <C-l> <c-r>=LineComplition()<cr>
inoremap <C-l> <c-x><c-l>

" for react app
abbr RF <React.Fragment>
abbr RFE </React.Fragment>

imap <C-up> <Esc>0i// <Esc>k0i
imap <C-down> <Esc>0i// <Esc>j0i
imap <A-up> <Esc>0d3lki
imap <A-down> <Esc>0d3lji

" https://vi.stackexchange.com/questions/177/what-is-the-purpose-of-swap-files?newreg=6ff863a8acf447c08f3fcdd26429f109
" globally disable
" set noswapfile
"
" locally enalble
" :setlocal swapfile
set directory^=$HOME/.vim/tmp/




" setting for vim tree lik
" from: https://shapeshed.com/vim-netrw/
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
"  let g:netrw_browse_split = 4
"  let g:netrw_altv = 1
"  let g:netrw_winsize = 5
"  augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * :Vexplore
" augroup END

hi SpellBad    ctermfg=1      ctermbg=255     cterm=none


" run node
map r :w !/usr/bin/env node<cr>
map t :r !node %<cr>
