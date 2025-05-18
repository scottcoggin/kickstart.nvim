-- File: ~/.config/nvim/lua/custom/plugins/lsp.lua
return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        pyright = {},
        terraformls = {},
        texlab = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = { callSnippet = 'Replace' },
            },
          },
        },
      },
      setup = {
        -- You can configure specific servers here if needed
      },
      -- LSP keybindings on attach
      on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc, noremap = true, silent = true })
        end

        -- Navigation
        map('n', 'gd', vim.lsp.buf.definition, 'Go to Definition')
        map('n', 'gD', vim.lsp.buf.declaration, 'Go to Declaration')
        map('n', 'gi', vim.lsp.buf.implementation, 'Go to Implementation')
        map('n', 'gr', vim.lsp.buf.references, 'Go to References')
        map('n', 'K', vim.lsp.buf.hover, 'Hover Documentation')
        map('n', '<leader>rn', vim.lsp.buf.rename, 'Rename Symbol')
        map('n', '<leader>ca', vim.lsp.buf.code_action, 'Code Action')
        map('n', '<leader>f', function()
          vim.lsp.buf.format { async = true }
        end, 'Format Buffer')

        -- Diagnostics
        map('n', '[d', vim.diagnostic.goto_prev, 'Previous Diagnostic')
        map('n', ']d', vim.diagnostic.goto_next, 'Next Diagnostic')
        map('n', '<leader>e', vim.diagnostic.open_float, 'Show Diagnostic')
        map('n', '<leader>q', vim.diagnostic.setloclist, 'Diagnostic List')
      end,
    },
  },

  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'pyright',
        'terraformls',
        'texlab',
        'lua_ls',
      },
    },
  },
}
