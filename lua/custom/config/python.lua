-- Set Python 3 host program explicitly to avoid runtime warnings
vim.g.python3_host_prog = '/home/scott/.pyenv/versions/nvim-python/bin/python'

-- Notify the user that the Python host has been set
vim.schedule(function()
  vim.notify('Custom Python host set for Neovim', vim.log.levels.INFO)
end)
