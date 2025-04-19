-- File: ~/.config/nvim/lua/custom/plugins/python.lua
return {
  {
    -- Python LSP support
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        pyright = {},
      },
    },
  },
  {
    -- Additional Python formatting via conform (if not set globally)
    'stevearc/conform.nvim',
    opts = function()
      local os = require 'custom.config.os'
      local black = 'black'
      local isort = 'isort'
      if os.is_windows then
        black = 'C:/Users/scott/AppData/Roaming/Python/Python312/Scripts/black.exe'
        isort = 'C:/Users/scott/AppData/Roaming/Python/Python312/Scripts/isort.exe'
      end
      return {
        formatters_by_ft = {
          python = { black, isort },
        },
      }
    end,
  },
}
