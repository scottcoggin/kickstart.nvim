return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot", -- lazy load on :Copilot command
	event = "InsertEnter", -- or load as soon as you start typing
	config = function()
		require("copilot").setup({
			panel = { enabled = true },
			suggestion = {
				enabled = true,
				auto_trigger = true, -- start showing suggestions as you type
				debounce = 75,
				keymap = {
					accept = "<C-y>",
					accept_word = false,
					accept_line = false,
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			filetypes = {
				yaml = true,
				markdown = true,
				help = false,
				gitcommit = true,
				gitrebase = false,
				["*"] = true, -- enable for all filetypes
			},
		})
	end,
}
