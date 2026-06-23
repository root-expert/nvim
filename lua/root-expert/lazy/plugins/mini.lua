return {
	{
		"nvim-mini/mini.icons",
		version = "*",
		config = function()
			require("mini.icons").setup()
			MiniIcons.mock_nvim_web_devicons()
		end,
	},
	{
		"nvim-mini/mini.statusline",
		version = "*",
		config = function()
			require("mini.statusline").setup()
		end,
	},
	{
		"nvim-mini/mini.comment",
		version = "*",
		config = function()
			require("mini.comment").setup()
		end,
	},
	{
		"nvim-mini/mini.move",
		version = "*",
		config = function()
			require("mini.move").setup()
		end,
	},
	{
		"nvim-mini/mini.splitjoin",
		version = "*",
		config = function()
			require("mini.splitjoin").setup()
		end,
	},
}
