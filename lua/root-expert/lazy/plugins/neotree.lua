return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{ "<leader>tt", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neotree tree" } },
		},
		lazy = false, -- neo-tree will lazily load itself
	},
}
