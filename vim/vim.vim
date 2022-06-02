let mapleader=" "
" no-op mappings to disable default vim behaviors
map Q <Nop> 

syntax on	
set history=1000 	" command history limit
set nocompatible    " disables vi support
filetype plugin indent on	" enables file type plugin scripts
set number	" show line numbers
set ruler	" show cursor position
set showcmd	"show incomplete commands.
set wildmenu	" show tab completion menu
set tabstop=4	" tab settings
set shiftwidth=4
set nohls	" search options
set incsearch
set ignorecase
set smartcase	
set belloff=all 
set noswapfile
set lbr	" linebreak
set ai	" auto indent
set si	" smart indent
set hidden	" buffer hidden setting
set mouse=a	" mouse support
set backspace=start,eol,indent
set spell
set colorcolumn=80

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab	" yaml tab indent

" buffer mappings
map <silent> <Leader>b :buffers<CR>
map <silent> <leader>s :bp<CR>
map <silent> <leader>d :bn<CR>
map <silent> <leader>w :w<CR>
map <silent> <leader>W :wq<CR>
map <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
map <silent> <leader>Q :qa<CR>

" Navigation mappings
map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>

set laststatus=2
colorscheme xcodedark

"" Convenience mappings
nnoremap Y y$
map <silent> <Leader>c "*y<Esc>
map <silent> <Leader>v "*p<Esc>
