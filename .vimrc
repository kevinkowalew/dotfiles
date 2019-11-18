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

"
" plugins 
"
call plug#begin('~/.vim/plugged')

" fzf 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" lightline 
Plug 'itchyny/lightline.vim'

" nerdtree 
Plug 'scrooloose/nerdtree'

" vim-gitbranch
Plug 'itchyny/vim-gitbranch'

" vim-fugitive
Plug 'tpope/vim-fugitive'
call plug#end()


"
" key mappings
"
map <c-j> :Files<ENTER>
map <C-o> :NERDTreeToggle<CR>
"map <C-b> :
