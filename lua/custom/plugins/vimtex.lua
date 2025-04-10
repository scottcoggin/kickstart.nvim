return {
	{
		"lervag/vimtex",
		lazy = false, -- load immediately (important for filetype detection)
		init = function()
			-- Use SumatraPDF on Windows (or change for your PDF viewer)
			vim.g.vimtex_view_method = "general"

			-- Optional: disable syntax if you're using Treesitter
			vim.g.vimtex_syntax_enabled = 0

			-- Optional: suppress warning if tools are missing
			local function check_tool(name)
				if vim.fn.executable(name) == 0 then
					vim.schedule(function()
						vim.notify("Missing tool: " .. name, vim.log.levels.WARN)
					end)
				end
			end

			check_tool("latexindent")
			check_tool("chktex")
		end,
		config = function()
			-- Optional keymaps
			vim.keymap.set("n", "<leader>ll", "<cmd>VimtexCompile<CR>", { desc = "Vimtex Compile" })
			vim.keymap.set("n", "<leader>lv", "<cmd>VimtexView<CR>", { desc = "Vimtex View PDF" })
			vim.keymap.set("n", "<leader>lc", "<cmd>VimtexClean<CR>", { desc = "Vimtex Clean" })
		end,
	},
}
