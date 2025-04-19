-- File: ~/.config/nvim/lua/custom/config/keymaps.lua

-- Set leader early for all mappings
vim.g.mapleader = ' '

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Toggle nvim-tree (file explorer)
map('n', '<leader>n', ':NvimTreeToggle<CR>', opts)

-- Git keymaps using gitsigns
local gs = require 'gitsigns'
map('n', '<leader>gj', function()
  gs.nav_hunk 'next'
end, { desc = 'Next Git Hunk' })
map('n', '<leader>gk', function()
  gs.nav_hunk 'prev'
end, { desc = 'Prev Git Hunk' })
map('n', '<leader>gp', gs.preview_hunk, { desc = 'Preview Git Hunk' })
map('n', '<leader>gs', function()
  gs.stage_hunk()
end, { desc = 'Stage Git Hunk' })
map('n', '<leader>gr', gs.reset_hunk, { desc = 'Reset Git Hunk' })

-- Telescope Git commands (Fugitive replacement)
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>', { desc = 'Git Commits' })
map('n', '<leader>gb', '<cmd>Telescope git_branches<CR>', { desc = 'Git Branches' })
map('n', '<leader>gS', '<cmd>Telescope git_status<CR>', { desc = 'Git Status' })
