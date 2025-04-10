return {
	{
		"hashivim/vim-terraform",
		ft = { "terraform" },
		init = function()
			-- Format Terraform files on save using terraform fmt
			vim.g.terraform_fmt_on_save = 1

			-- Optional: align `=` signs in assignments
			vim.g.terraform_align = 1
		end,
	},
}
