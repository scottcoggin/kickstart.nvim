return {
  {
    -- Tells Lazy this is a local plugin in your config directory
    dir = vim.fn.stdpath 'config' .. '/lua/custom/config',
    name = 'custom-keymaps', -- A local plugin name so it won't fetch from GitHub
    lazy = false, -- load on startup
    -- Note: removed 'priority' to avoid "Invalid plugin spec" on older Lazy
    config = function()
      -- Optional debug print so you can see this file is loading
      print '✅ Loading custom.config.keymaps plugin'

      -- We can set the leader here or in the actual keymaps file
      vim.g.mapleader = ' '

      -- Actually load our keymaps
      require 'custom.config.keymaps'
    end,
  },
}
