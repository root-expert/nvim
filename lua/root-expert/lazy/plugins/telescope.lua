return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		keys = {
			{ "<leader>ff", "<cmd>Telescope live_grep<cr>", { desc = "Telescope live [G]rep" } },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope [B]uffers" } },
			{ "<leader>fr", "<cmd>Telescope lsp_references", { desc = "Telescope [F]ind [R]eferences" } },
		},
		config = function()
			local builtin = require("telescope.builtin")
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					file_ignore_patterns = { "%.git/.*" },
				},
			})
			telescope.load_extension("fzf")
			telescope.load_extension("diff")

			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files({ hidden = true })
			end, { desc = "Telescope [F]ind [F]iles" })
		end,
	},
	{
		"jemag/telescope-diff.nvim",
		dependencies = {
			{ "nvim-telescope/telescope.nvim" },
		},
		keys = {
			{ "<leader>dF", "<cmd>Telescope diff diff_files<cr>", { desc = "Compare 2 files" } },
			{ "<leader>df", "<cmd>Telescope diff diff_current<cr>", { desc = "Comare file with current" } },
		},
	},
}
