-- empty setup using defaults
-- require("nvim-tree").setup()
-- OR setup with some options
local tree_cb = require 'nvim-tree.config'.nvim_tree_callback
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  open_on_tab = true,
  update_cwd = true,

  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = { hint = "", info = "", warning = "", error = "" }
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    number = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        { key = { "o", "<CR>", t }, cb = tree_cb "edit" },
        { key = "v", cb = tree_cb "vsplit" }
      }
    }
  },
  git = { enable = true, ignore = true, timeout = 100 },
  renderer = { group_empty = true },
  filters = { dotfiles = false }
})
