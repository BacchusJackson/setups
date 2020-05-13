set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mfukar/robotframework-vim'
Plugin 'preservim/nerdtree'

call vundle#end()

syntax on
filetype plugin indent on

set encoding=utf-8

set laststatus=2
set noshowmode
set relativenumber
set hls

autocmd FileType python map <F5> :w<CR>:!python %<CR>

map <C-o> :NERDTreeToggle<CR>
