return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local ts = require("nvim-treesitter")
			ts.setup({})
			ts.install({
				"lua",
				"terraform",
				"helm",
				"yaml",
				"puppet",
				"bash",
				"vimdoc",
			})
		end,
	},
}
