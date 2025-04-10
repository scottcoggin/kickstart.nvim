return {
	{
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lint = require("lint")

			-- tflint parser for Terraform
			lint.linters.tflint = {
				name = "tflint",
				cmd = "tflint",
				stdin = false,
				args = { "--format", "json", "--chdir", "." },
				stream = "stdout",
				ignore_exitcode = true,
				parser = function(output)
					local ok, decoded = pcall(vim.json.decode, output)
					if not ok or type(decoded) ~= "table" then
						return {}
					end
					local diagnostics = {}
					for _, diag in ipairs(decoded.issues or {}) do
						table.insert(diagnostics, {
							lnum = diag.range.start.line - 1,
							col = diag.range.start.column - 1,
							end_lnum = diag.range["end"] and diag.range["end"].line - 1 or nil,
							end_col = diag.range["end"] and diag.range["end"].column - 1 or nil,
							message = diag.message,
							severity = vim.diagnostic.severity.WARN,
							source = "tflint",
						})
					end
					return diagnostics
				end,
			}

			-- chktex parser for LaTeX
			lint.linters.chktex = {
				name = "chktex",
				cmd = "chktex",
				stdin = false,
				args = { "-q", "-f%f:%l:%c:%d:%k:%n:%m\n" },
				stream = "stdout",
				ignore_exitcode = true,
				parser = function(output)
					local diagnostics = {}
					for line in vim.gsplit(output, "\n") do
						local filename, lnum, col, severity, message =
							string.match(line, "([^:]+):(%d+):(%d+):%d+:(%a+):%d+:(.+)")
						if filename then
							table.insert(diagnostics, {
								filename = filename,
								lnum = tonumber(lnum) - 1,
								col = tonumber(col) - 1,
								message = message,
								severity = ({
									W = vim.diagnostic.severity.WARN,
									E = vim.diagnostic.severity.ERROR,
									I = vim.diagnostic.severity.INFO,
								})[severity],
								source = "chktex",
							})
						end
					end
					return diagnostics
				end,
			}

			-- Linter filetype mappings
			lint.linters_by_ft = {
				terraform = { "tflint" },
				tex = { "chktex" },
				python = { "flake8" }, -- or "pylint" if you prefer
			}

			-- Auto-lint on save
			vim.api.nvim_create_autocmd("BufWritePost", {
				callback = function()
					lint.try_lint()
				end,
			})

			-- Manual trigger: <leader>L with timed echo and clear
			vim.keymap.set("n", "<leader>L", function()
				lint.try_lint()
				vim.api.nvim_echo({ { "Linting file...", "Normal" } }, false, {})
				vim.defer_fn(function()
					vim.cmd("echo") -- clears message area after 1.5s
				end, 1500)
			end, { desc = "Run linter manually" })
		end,
	},
}
