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
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { 'pyright', 'terraformls', 'texlab', 'lua_ls' },
    },
  },
}
