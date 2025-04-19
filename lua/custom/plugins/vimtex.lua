-- File: ~/.config/nvim/lua/custom/plugins/vimtex.lua
return {
  {
    'lervag/vimtex',
    lazy = false, -- load immediately for filetype detection
    init = function()
      vim.g.vimtex_view_method = 'general' -- for Windows (modify as needed)
      vim.g.vimtex_syntax_enabled = 0 -- disable builtin syntax if using Treesitter
      -- Check for required tools; warn if missing
      local function check_tool(name)
        if vim.fn.executable(name) == 0 then
          vim.schedule(function()
            vim.notify('Missing tool: ' .. name, vim.log.levels.WARN)
          end)
        end
      end
      check_tool 'latexindent'
      check_tool 'chktex'
    end,
    config = function()
      vim.keymap.set('n', '<leader>ll', '<cmd>VimtexCompile<CR>', { desc = 'Vimtex Compile' })
      vim.keymap.set('n', '<leader>lv', '<cmd>VimtexView<CR>', { desc = 'Vimtex View PDF' })
      vim.keymap.set('n', '<leader>lc', '<cmd>VimtexClean<CR>', { desc = 'Vimtex Clean' })
    end,
  },
}
