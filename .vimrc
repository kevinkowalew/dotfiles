syntax on	" syntax highlighting
set history=1000 	" command history limit
set nocompatible    " disables vi support
filetype plugin indent on	" enables file type plugin scripts
set number	" show line numbers
set ruler	" show cursor position
set showcmd	"show incomplete commands.
set runtimepath+=~/.vim/bundle/swift.vim	"swift syntax highlighting support
set wildmenu	" show tab completion menu
set tabstop=4	" tab settings
set shiftwidth=4
set hls	" search options
set incsearch
set ignorecase
set smartcase	
set belloff=all 
set noswapfile
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab	" yaml tab indent
set lbr	" linebreak
set ai	" auto indent
set si	" smart indent
set hidden	" buffer hidden setting
set mouse=a	" mouse support
let g:vimwiki_list = [{'path': '$HOME/Dropbox/vimwiki'}] " vimwiki dropbox path config 

let mapleader=" " 	" leader key mapping
nnoremap <silent> <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>J :NERDTreeFind<CR>
nnoremap <silent> <Leader>o :CtrlP<CR>

map <silent> <leader>s :bp<CR>
map <silent> <leader>d :bn<CR>
map <silent> <leader>tj :bel term<CR>

map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>

call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
call plug#end()
