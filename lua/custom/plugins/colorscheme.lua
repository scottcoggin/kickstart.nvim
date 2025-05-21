return {
  {
    'tanvirtin/monokai.nvim',
    priority = 1000, -- Ensure it loads early
    config = function()
      vim.cmd.colorscheme 'monokai' -- or 'monokai_pro', 'monokai_soda', etc.
    end,
  },
}
