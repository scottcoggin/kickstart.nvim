local os = require 'custom.config.os'

if os.is_windows then
  -- Adjust this path if your actual Python location is different
  vim.g.python3_host_prog = 'C:/Users/scott/.pyenv/pyenv-win/versions/3.12.2/python.exe'
elseif os.is_linux then
  vim.g.python3_host_prog = '/usr/bin/python3'
elseif os.is_mac then
  vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
end
