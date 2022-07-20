vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_material_background = "hard"
vim.cmd [[colorscheme gruvbox-material]]

vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
}

--gitgutter
vim.cmd("highlight GitGutterAdd guifg=#009900 ctermfg=Green")
vim.cmd("highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow")
vim.cmd("highlight GitGutterDelete guifg=#ff2222 ctermfg=Red")

vim.g.gitgutter_enabled = 1
vim.g.gitgutter_map_key = 0

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})

require 'bufferline'.setup {
  options = {
    diagnostics='coc',
    mode = 'tabs',
    animation = true,
    closable = true,
    -- Configure icons on the bufferline.
    icon_separator_active = '▎',
    icon_separator_inactive = '▎',
    icon_close_tab = '',
    icon_close_tab_modified = '●',
    icon_pinned = '車',

  },
    icons='both'
}
