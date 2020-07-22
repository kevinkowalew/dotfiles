call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

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
set nohls	" search options
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
set spell
let g:vimwiki_list = [{'path': '$HOME/Dropbox/vimwiki'}] " vimwiki dropbox path config 
let g:NERDTreeWinSize=50
let mapleader=" " 	" leader key mapping

" Convenience mappings
map <silent> <Leader>c "*y<Esc>
map <silent> <Leader>v "*p<Esc>
map <silent> <leader>~ :source %<CR>
map <silent> <leader>rc :e ~/.vimrc<CR>
map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>

" NERDTree/Ctrl P mappings
map <silent> <Leader>f :NERDTreeToggle<Enter>
map <silent> <Leader>F :NERDTreeFind<CR>
map <silent> <Leader>o :CtrlP<CR>

" buffer mappings
map <silent> <Leader>b :buffers<CR>
map <silent> <leader>s :bp<CR>
map <silent> <leader>d :bn<CR>
map <silent> <leader>w :w<CR>
map <silent> <leader>W :wq<CR>
map <silent> <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
map <silent> <leader>Q :qa<CR>

" Terminal mappings
map <leader>tj :bel term<CR>
map <leader>tk :abo term<CR>
map <leader>th :abo vert term<CR>
map <silent> <leader>tl :bel vert term<CR>

" Navigation mappings
map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>

" Coc mappings
map <leader>gd <Plug>(coc-definition)
map <leader>gf <Plug>(coc-fix-current)
map <leader>gF <Plug>(coc-format)
map <leader>rr <Plug>(coc-rename)
map <silent> <leader>ga :CocList actions<Enter>
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" maven mappings
map <silent> <leader>mb :bel vert term mvn clean package<CR> 
map <silent> <leader>mB :bel vert term <CR>
map <silent> <leader>ms :bel vert term mvn dependency:purge-local-repository<CR>
map <silent> <leader>ta :bel vert term mvn test<CR>
map <silent> <leader>tf :bel vert term mvn -Dtest=%:t:r test<CR>

syntax enable
set background=dark
set t_Co=256
colorscheme gruvbox

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
