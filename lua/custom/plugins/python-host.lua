return {
	"nvim-lua/plenary.nvim", -- lightweight dependency just to hook into Lazy
	lazy = false, -- ensures this runs immediately at startup
	priority = 1000, -- runs before any plugin that might need Python
	config = function()
		vim.g.python3_host_prog = "C:/Users/scott/.pyenv/pyenv-win/versions/3.12.9/python.exe"
	end,
}
