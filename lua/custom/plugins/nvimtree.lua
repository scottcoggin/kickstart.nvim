-- File: ~/.config/nvim/lua/custom/plugins/nvimtree.lua
return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*', -- use latest stable version
    lazy = false, -- load on startup (or adjust with an event)
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      view = { width = 30, side = 'left' },
      filters = { dotfiles = false },
      git = { enable = true },
    },
  },
}
