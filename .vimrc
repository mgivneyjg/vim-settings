set nocompatible
filetype off

set nu " line numbering
set clipboard=unnamed " system clipboard
set encoding=utf8
set splitright
set lcs+=space:·
syntax on

" make backspace delete, cuz duh!
set backspace=indent,eol,start

" makes lightline turn on
set laststatus=2

" removes trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e


" set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" let vundle manage itself
Plugin 'gmarik/Vundle.vim'

" plugins start here

Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'itchyny/vim-gitbranch'

" plugins end here

call vundle#end()
filetype plugin indent on


