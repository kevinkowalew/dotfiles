""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"								 Kevin's .vimrc                                "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" command history limit
set history=1000

" show line numbers
set number

" show cursor position
set ruler

"show incomplete commands.
set showcmd

" syntax highlighting
syntax on

" tab completion menu
set wildmenu

" theme
color slate
set bg=light

" tab settings
set tabstop=4
set shiftwidth=4

" search options
set nohlsearch
set noincsearch
set ignorecase
set smartcase	 

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

" yaml tab indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" example macro definition: let @a = 'gg'
