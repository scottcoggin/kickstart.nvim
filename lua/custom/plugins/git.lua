-- File: ~/.config/nvim/lua/custom/plugins/git.lua
return {
  -- Telescope for Git commands
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      defaults = {
        mappings = {
          i = { ['<C-j>'] = 'move_selection_next', ['<C-k>'] = 'move_selection_previous' },
        },
      },
    },
  },
  -- Lazygit integration
  {
    'kdheepak/lazygit.nvim',
    cmd = 'LazyGit',
    keys = {
      { '<leader>gs', '<cmd>LazyGit<cr>', desc = 'Open LazyGit' },
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.g.lazygit_floating_window_winblend = 10
      vim.g.lazygit_floating_window_scaling_factor = 0.9
      vim.g.lazygit_use_neovim_remote = true
    end,
  },
}
