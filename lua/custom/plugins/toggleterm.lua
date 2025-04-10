return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				direction = "float",
				float_opts = {
					border = "curved",
				},
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
			})

			local Terminal = require("toggleterm.terminal").Terminal

			-- Terraform: Plan
			local tf_plan = Terminal:new({
				cmd = "terraform plan",
				hidden = true,
				direction = "float",
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
				on_exit = function(_, code)
					if code == 0 then
						vim.notify("✅ Terraform plan complete", vim.log.levels.INFO)
					else
						vim.notify("❌ Terraform plan failed", vim.log.levels.ERROR)
					end
				end,
			})

			-- Terraform: Apply
			local tf_apply = Terminal:new({
				cmd = "terraform apply",
				hidden = true,
				direction = "float",
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
			})

			-- Optional: Terraform: FMT
			local tf_fmt = Terminal:new({
				cmd = "terraform fmt",
				hidden = true,
				direction = "float",
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
			})

			-- Optional: TFLint
			local tf_lint = Terminal:new({
				cmd = "tflint",
				hidden = true,
				direction = "float",
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
			})

			-- Python: Run current file
			local python_runner = Terminal:new({
				cmd = "python3 %",
				hidden = true,
				direction = "float",
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
			})

			-- Keymaps
			vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle terminal" })
			vim.keymap.set("n", "<leader>tp", function()
				tf_plan:toggle()
			end, { desc = "Terraform plan" })
			vim.keymap.set("n", "<leader>ta", function()
				tf_apply:toggle()
			end, { desc = "Terraform apply" })
			vim.keymap.set("n", "<leader>tf", function()
				tf_fmt:toggle()
			end, { desc = "Terraform fmt" })
			vim.keymap.set("n", "<leader>tl", function()
				tf_lint:toggle()
			end, { desc = "TFLint" })
			vim.keymap.set("n", "<leader>rr", function()
				python_runner:toggle()
			end, { desc = "Run Python file" })
		end,
	},
}
