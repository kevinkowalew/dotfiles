call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'junegunn/goyo.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'christoomey/vim-tmux-navigator'
Plug 'cocopon/iceberg.vim'
Plug 'preservim/vimux'
Plug 'sainnhe/gruvbox-material'
call plug#end()

map <silent> <leader>pi :PlugInstall<CR>
map <silent> <leader>pc :PlugClean<CR>
