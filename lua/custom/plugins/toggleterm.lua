-- File: ~/.config/nvim/lua/custom/plugins/toggleterm.lua
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        direction = 'float',
        float_opts = { border = 'curved' },
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
      }

      local Terminal = require('toggleterm.terminal').Terminal

      local tf_plan = Terminal:new {
        cmd = 'terraform plan',
        hidden = true,
        direction = 'float',
        on_open = function()
          vim.cmd 'startinsert!'
        end,
      }

      local tf_apply = Terminal:new {
        cmd = 'terraform apply',
        hidden = true,
        direction = 'float',
        on_open = function()
          vim.cmd 'startinsert!'
        end,
      }

      local tf_fmt = Terminal:new {
        cmd = 'terraform fmt',
        hidden = true,
        direction = 'float',
        on_open = function()
          vim.cmd 'startinsert!'
        end,
      }

      local tf_lint = Terminal:new {
        cmd = 'tflint',
        hidden = true,
        direction = 'float',
        on_open = function()
          vim.cmd 'startinsert!'
        end,
      }

      local map = vim.keymap.set
      map('n', '<leader>tt', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Toggle terminal' })
      map('n', '<leader>tp', function()
        tf_plan:toggle()
      end, { desc = 'Terraform plan' })
      map('n', '<leader>ta', function()
        tf_apply:toggle()
      end, { desc = 'Terraform apply' })
      map('n', '<leader>tf', function()
        tf_fmt:toggle()
      end, { desc = 'Terraform fmt' })
      map('n', '<leader>tl', function()
        tf_lint:toggle()
      end, { desc = 'TFLint' })
    end,
  },
}
