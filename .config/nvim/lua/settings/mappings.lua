local g = vim.g
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
 
--basic maps
vim.keymap.set('n', '<F5>', ':luafile ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<Leader>q', ':q<CR>')
vim.keymap.set('n', '<Leader>qq', ':q!<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set({ 'n', 'v' }, '<M-z>', ':set wrap!<CR>', { silent = true })
vim.keymap.set('v', '<Tab>', '>gv<CR>')
vim.keymap.set('v', '<S-Tab>', '<gv<CR>')
vim.keymap.set('n', '<Leader>h', ':nohl<CR>', {silent= true})
vim.keymap.set('n', '<ESC>', ':nohl<CR>', {silent= true})
vim.keymap.set('n', '<Leader>j', ':vsplit<CR>')

--Terminal
vim.keymap.set({ 'n', 'v' }, '<C-t>', ':split<CR>:ter<CR>:resize 15<CR>')
vim.keymap.set('n', '<Leader>>', '10<C-w>>')
vim.keymap.set('n', '<Leader><', '10<C-w><')

-- Files and nvim-tree config
--vim.keymap.set('n', '<S-b>', ':Buffers<CR>')
--vim.keymap.set('n', '<C-s>', ':Rg<CR>')
--vim.keymap.set('n', '<C-f>', ':Files<CR>')
--vim.keymap.set('n', 'tp', ':tabprev<CR>')
--vim.keymap.set('n', 'tn', ':tabnext<CR>')
--vim.keymap.set('n', 'tf', ':tabfirst<CR>')
--vim.keymap.set('n', 'tl', ':tablast<CR>')
vim.keymap.set('n', '<Leader>b', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '--', '<plug>NERDCommenterToggle', opts)

vim.keymap.set('n', ')', '<Plug>(GitGutterNextHunk)', opts)
vim.keymap.set('n', '(', '<Plug>(GitGutterPrevHunk)', opts)
 
vim.cmd [[
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
]]

-- bar tabs
map('n', 'tp', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<S-TAB>', '<Cmd>BufferPrevious<CR>', opts)
-- Move to previous/next
map('n', 'tn', '<Cmd>BufferNext<CR>', opts)
map('n', '<TAB>', '<Cmd>BufferPrevious<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', 'tf', '<Cmd>BufferGoto 1<CR>', opts)
map('n', 't2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', 't3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', 't4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', 't5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', 't6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', 't7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', 't8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', 't9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', 'tl', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
