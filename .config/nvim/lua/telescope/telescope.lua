local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- search files
map('n', '<C-f>', '<cmd>lua require("telescope.builtin").find_files()<cr>', opts)
map('n', '<S-b>', '<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_dropdown())<cr>', opts)

-- search word
map('n', '<leader>s', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
map('n', '<C-s>', '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)

-- Treesitter
map('n', '<leader>ts', '<cmd>lua require("telescope.builtin").treesitter()<cr>', opts)
-- Commit
map('n', '<leader>gc',
    '<cmd>lua require("telescope.builtin").git_commits()<cr>', opts)
map('n', '<leader>gs', '<cmd>lua require("telescope.builtin").git_status()<cr>', opts)
map('n', '<leader>gb', '<cmd>lua require("telescope.builtin").git_branches()<cr>', opts)

map('n', '<leader>ta', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
map('n', '<C-P>', '<cmd>lua require("telescope.builtin").commands()<cr>', opts)
