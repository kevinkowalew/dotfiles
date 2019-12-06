""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"								 Kevin's .vimrc                                "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" command history limit
set history=1000

" disables vi support
set nocompatible

" enables file type plugin scripts
filetype plugin on

" show line numbers
set number

" show cursor position
set ruler

"show incomplete commands.
set showcmd

" syntax highlighting
syntax on

"swift syntax highlighting support
set runtimepath+=~/.vim/bundle/swift.vim

" show tab completion menu
set wildmenu

" tab settings
set tabstop=4
set shiftwidth=4

" search options
set nohls
set incsearch
set ignorecase
set smartcase	

" yaml tab indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" linebreak
set lbr

" auto indent
set ai

" smart indent
set si

" buffer hidden setting
set hidden

" mouse support
set mouse=a

" vimwiki dropbox path config 
let g:vimwiki_list = [{'path': '$HOME/Dropbox/vimwiki'}] " set path to a directory inside Dropbox

" lightline setup & styling
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode'] ],
      \   'right':  [ ['modified', 'readonly', 'gitbranch', 'filename'] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" plugins 
call plug#begin('~/.vim/plugged')

" lightline 
Plug 'itchyny/lightline.vim'

" vim-gitbranch
Plug 'itchyny/vim-gitbranch'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" vim-wiki
Plug 'vimwiki/vimwiki'
call plug#end()
