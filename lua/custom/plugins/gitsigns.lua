-- File: ~/.config/nvim/lua/custom/plugins/gitsigns.lua
return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc, noremap = true, silent = true })
      end
      map('n', ']h', require('gitsigns').next_hunk, 'Next Hunk')
      map('n', '[h', require('gitsigns').prev_hunk, 'Prev Hunk')
      map('n', '<leader>gp', require('gitsigns').preview_hunk, 'Preview Hunk')
      map('n', '<leader>gs', require('gitsigns').stage_hunk, 'Stage Hunk')
      map('n', '<leader>gr', require('gitsigns').reset_hunk, 'Reset Hunk')
    end,
  },
}
