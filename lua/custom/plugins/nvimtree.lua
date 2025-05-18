return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    opts = {
      view = { width = 30, side = 'left' },
      filters = { dotfiles = false },
      git = { enable = true },
    },

    config = function(_, opts)
      require('nvim-tree').setup(opts)

      local map = vim.keymap.set
      local key_opts = { noremap = true, silent = true }

      -- Keybindings
      map('n', '<leader>n', ':NvimTreeToggle<CR>', vim.tbl_extend('force', key_opts, { desc = 'Toggle NvimTree' }))
      map('n', '<leader>nf', ':NvimTreeFindFile<CR>', vim.tbl_extend('force', key_opts, { desc = 'Find Current File in Tree' }))
      map('n', '<leader>nr', ':NvimTreeRefresh<CR>', vim.tbl_extend('force', key_opts, { desc = 'Refresh NvimTree' }))
    end,
  },
}
