" Movement {{{
    "remaps B to go to the beginning of a line
    nnoremap B ^ 
    "remaps E to go to the end of a line
    nnoremap E $ 
    "remaps $ and ^ to nothing and jf as an esc 
    nnoremap $ <nop>
    nnoremap ^ <nop>
    inoremap jf <esc>
    "changes the leader from / to ,
    let mapleader=","
    set backspace=indent,eol,start
" }}}

" UI Config {{{
    "uses the color scheme located in /.vim/colors
    colorscheme badwolf
    "syntax for colors of reserved words
    syntax enable
    syntax on
    "show the line numbers
        set number
    "show the cmd line at the bottom
        set showcmd
    "shows what line you're one
        set cursorline
    "checks the file type and does language specific indention from .vim/indent/python.vim
        filetype indent on
    "visual autocomplete for cmd menu
        set wildmenu
    "don't redraw the screen unless vim has to. Used mostly for macros
        set lazyredraw
    "shows the match braces and curly braces ()
        set showmatch
" }}}

" Spaces & Tabs {{{
    "tab button inserts 4 spaces instead of the default 8
    set tabstop=4
    "deletes 4 spaces when editing
    set softtabstop=4
    "makes a tab actually spaces instead of tab character
    set expandtab
" }}}

" Searching {{{
    set incsearch
    set hlsearch
" }}}

" Folding {{{
    "enables folding
    set foldenable
    "opens most folds by default unless the nest is over 10
    set foldlevelstart=10
    "set the max nest to 10
    set foldnestmax=10
    "lets you hit space to expand tabs in normal mode
    nnoremap <space> za
    "sets the fold method to indents for programming languages
    set foldmethod=indent
    "checks the last line of a file for a specific setting
    set modelines=1
" }}}

" Programming File Type Settings {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
" }}}
" vim:foldmethod=marker:foldlevel=0
