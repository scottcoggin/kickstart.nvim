-- File: ~/.config/nvim/lua/custom/config/os.lua

local os_name = vim.uv.os_uname().sysname
local M = {}

M.is_windows = os_name:find 'Windows' ~= nil
M.is_linux = os_name:find 'Linux' ~= nil
M.is_mac = os_name:find 'Darwin' ~= nil

return M
