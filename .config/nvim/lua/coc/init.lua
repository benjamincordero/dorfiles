vim.g.coc_node_path = '/usr/bin/node'
--coc config
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', {silent=true})
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', {silent=true})
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', {silent=true})
vim.keymap.set('n', 'K', ':call CocActionAsync("doHover")<CR>', {silent=true})

vim.keymap.set('v', '<leader>f', '<Plug>(coc-format-selected)', {silent=true})

vim.cmd([[
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])


