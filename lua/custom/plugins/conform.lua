-- File: ~/.config/nvim/lua/custom/plugins/conform.lua
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  config = function()
    local os = require 'custom.config.os'

    local formatters = {
      lua = { 'stylua' },
      python = { 'black', 'isort' },
      terraform = { 'terraform_fmt', 'tf_lint' },
      tex = { 'latexindent' },
    }

    if os.is_windows then
      formatters.python = {
        'C:/Users/scott/AppData/Roaming/Python/Python312/Scripts/black.exe',
        'C:/Users/scott/AppData/Roaming/Python/Python312/Scripts/isort.exe',
      }
    end

    require('conform').setup {
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
      formatters_by_ft = formatters,
    }
  end,
}
