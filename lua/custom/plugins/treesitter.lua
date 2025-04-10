return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			-- Make sure the list exists
			opts.ensure_installed = opts.ensure_installed or {}

			-- Add terraform and latex (no duplicates)
			local extra_langs = { "terraform", "latex", "python" }
			for _, lang in ipairs(extra_langs) do
				if not vim.tbl_contains(opts.ensure_installed, lang) then
					table.insert(opts.ensure_installed, lang)
				end
			end
		end,
	},
}
