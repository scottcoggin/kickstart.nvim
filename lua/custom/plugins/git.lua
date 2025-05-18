-- File: ~/.config/nvim/lua/custom/plugins/git.lua
return {
  -- Telescope for Git commands
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        mappings = {
          i = {
            ['<C-j>'] = 'move_selection_next',
            ['<C-k>'] = 'move_selection_previous',
          },
        },
      },
    },
    keys = {
      { '<leader>gc', '<cmd>Telescope git_commits<CR>', desc = 'Git Commits' },
      { '<leader>gb', '<cmd>Telescope git_branches<CR>', desc = 'Git Branches' },
      { '<leader>gs', '<cmd>Telescope git_status<CR>', desc = 'Git Status' },
    },
  },

  -- Lazygit integration
  {
    'kdheepak/lazygit.nvim',
    cmd = 'LazyGit',
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'Open LazyGit' },
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.g.lazygit_floating_window_winblend = 10
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_use_neovim_remote = true
    end,
  },
}
