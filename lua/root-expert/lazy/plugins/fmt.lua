return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		config = function()
			local fmt = require("conform")
			fmt.setup({
				formatters_by_ft = {
					ansible = { "ansible-lint" },
					lua = { "stylua" },
					terrafrom = { "tofu_fmt" },
					yaml = { "yamlfmt" },
					markdown = { "markdownlint-cli2" },
				},
				formatters = {
					markdown = {
						args = "--format",
					},
				},
				format_on_save = function(bufnr)
					-- Disable with a global or buffer-local variable
					if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
						return
					end
					return { timeout_ms = 500, lsp_format = "fallback" }
				end,
			})

			vim.api.nvim_create_user_command("FormatDisable", function(args)
				if args.bang then
					-- FormatDisable! will disable formatting just for this buffer
					vim.b.disable_autoformat = true
				else
					vim.g.disable_autoformat = true
				end
			end, { desc = "Disable autoformat-on-save", bang = true })

			vim.api.nvim_create_user_command("FormatEnable", function()
				vim.b.disable_autoformat = false
				vim.g.disable_autoformat = false
			end, { desc = "Re-enable autoformat-on-save" })

			vim.keymap.set("n", "<leader>fd", "<Cmd>FormatDisable<CR>", { desc = "Disable auto-formatting on save" })
			vim.keymap.set("n", "<leader>fe", "<Cmd>FormatEnable<CR>", { desc = "Enable auto-fomratting on save" })
			vim.keymap.set("", "<leader>fmt", function()
				fmt.format({ async = true })
			end, { desc = "Format buffer" })
		end,
	},
}
