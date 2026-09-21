return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{ "<leader>fd", "<cmd>FormatDisable<cr>", { desc = "Disable auto-formatting on save globally" } },
			{ "<leader>fe", "<cmd>FormatEnable<cr>", { desc = "Enable auto-fomratting on save globally" } },
			{
				"<leader>fmt",
				function()
					require("conform").format({ async = true })
				end,
			},
			desc = "Format current buffer",
		},
		---@module "conform"
		---@type conform.setupOpts  i
		opts = {
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
		},
	},
}
