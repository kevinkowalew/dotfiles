"       _
"__   _(_)_ __ ___
"\ \ / / | '_ ` _ \
" \ V /| | | | | | |
"  \_/ |_|_| |_| |_|
"
let mapleader=" "
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
set laststatus=2
set background=dark
map Q <Nop> " no-op mappings to disable default vim behaviors
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab	" yaml tab indent
map <silent> <Leader>b :buffers<CR>
map <silent> <leader>s :bp<CR>
map <silent> <leader>d :bn<CR>
map <silent> <leader>w :w<CR>
map <silent> <leader>W :wq<CR>
map <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
map <silent> <leader>Q :qa<CR>
map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>
nnoremap Y y$
map <silent> <Leader>c "*y<Esc>
map <silent> <Leader>v "*p<Esc>
colorscheme sorbet

" ____  _             _
"|  _ \| |_   _  __ _(_)_ __  ___
"| |_) | | | | |/ _` | | '_ \/ __|
"|  __/| | |_| | (_| | | | | \__ \
"|_|   |_|\__,_|\__, |_|_| |_|___/
"               |___/
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

"  ____
" / ___|___   ___
"| |   / _ \ / __|
"| |__| (_) | (__
" \____\___/ \___|
"
map <leader>gd <Plug>(coc-definition)
map <leader>gr <Plug>(coc-references)
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"   __     __
"  / _|___/ _|
" | ||_  / |_
" |  _/ /|  _|
" |_|/___|_|
"
let g:fzf_layout = { 'down':  '30%'}
map <silent> <Leader>o :GFiles<CR>

" ____  _                            _
"|  _ \| |_   _  __ _  __ _  ___  __| |
"| |_) | | | | |/ _` |/ _` |/ _ \/ _` |
"|  __/| | |_| | (_| | (_| |  __/ (_| |
"|_|   |_|\__,_|\__, |\__, |\___|\__,_|
"               |___/ |___/
"
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" _   _      _                 
"| \ | | ___| |_ _ ____      __
"|  \| |/ _ \ __| '__\ \ /\ / /
"| |\  |  __/ |_| |   \ V  V / 
"|_| \_|\___|\__|_|    \_/\_/  
"
let g:netrw_list_hide = '^\.\w\+'
let g:netrw_liststyle = 3 " tree explorer
let g:netrw_banner = 0 " hide banner
let g:netrw_browse_split = 4 "always use vertical split
let g:netrw_winsize = 25 " default width
let g:netrw_altv = 1 " Open files in the new vertical split
map <silent> <leader>f :Lexplore<CR>
