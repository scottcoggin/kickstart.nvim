-- File: ~/.config/nvim/lua/custom/plugins/conform.lua
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  config = function()
    local formatters = {
      lua = { 'stylua' },
      python = { 'black', 'isort' },
      terraform = { 'terraform_fmt', 'tf_lint' },
      tex = { 'latexindent' },
    }

    require('conform').setup {
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
      formatters_by_ft = formatters,
    }
  end,
}
