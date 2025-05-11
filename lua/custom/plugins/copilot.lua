-- File: ~/.config/nvim/lua/custom/plugins/copilot.lua
return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  cmd = 'Copilot',
  config = function()
    require('copilot').setup {
      panel = {
        enabled = true,
        auto_refresh = true,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = '<C-j>',
          accept_word = false,
          accept_line = false,
          next = '<M-]>',
          prev = '<M-[>',
          dismiss = '<C-]>',
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = false,
        gitcommit = true,
        ['*'] = true,
      },
    }
  end,
}
