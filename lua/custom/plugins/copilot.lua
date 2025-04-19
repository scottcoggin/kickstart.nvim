-- File: ~/.config/nvim/lua/custom/plugins/copilot.lua
return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter', -- load when entering Insert mode
  cmd = 'Copilot', -- lazy load on command
  config = function()
    require('copilot').setup {
      panel = { enabled = true, auto_refresh = true },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = '<C-j>', -- Accept suggestion with Ctrl+Space
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
        ['*'] = true, -- enable for all filetypes
      },
    }
  end,
}
