vim.api.nvim_create_autocmd("FileType", {
	pattern = "TelescopePrompt",
	callback = function(args)
		-- vim.bo[args.buf].autocomplete = false
		vim.opt_local.autocomplete = false
	end,
})
