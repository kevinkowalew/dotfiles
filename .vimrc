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

" tab settings
set tabstop=4
set shiftwidth=4

" search options
set hlsearch
set incsearch
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

" lightline formatting
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'jellybeans',}

" theme
colorscheme jellybeans

" plugins 
call plug#begin('~/.vim/plugged')

" fzf 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" lightline 
Plug 'itchyny/lightline.vim'

" colorscheme download 
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
call plug#end()

"example macro definition: let @a = 'gg'
