map <leader>gd <Plug>(coc-definition)
map <leader>gr <Plug>(coc-type-definition)
map <leader>gf <Plug>(coc-fix-current)
map <leader>gF :call CocAction('runCommand', 'prettier.formatFile')<Enter>
map <leader>rr <Plug>(coc-rename)
map <silent> <leader>ga :CocList actions<Enter>
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
