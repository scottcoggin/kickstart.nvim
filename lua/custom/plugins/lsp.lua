return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				pyright = {},
				terraformls = {}, -- Terraform
				texlab = {}, -- LaTeX
			},
		},
	},

	{
		-- Automatically install LSPs
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"pyright",
				"terraformls",
				"texlab",
			},
		},
	},
}
