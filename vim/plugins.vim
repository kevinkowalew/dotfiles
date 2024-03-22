call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'cocopon/iceberg.vim'
call plug#end()

map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>
