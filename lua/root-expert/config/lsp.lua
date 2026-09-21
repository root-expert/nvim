vim.lsp.config("gh_actions_ls", {
	cmd = { "actions-languageserver", "--stdio" },
	filetypes = { "yaml.ghactions" },
})

vim.lsp.config("gopls", {
	settings = {
		gopls = {
			gofumpt = true,
		},
	},
})

vim.lsp.enable({
	"ansiblels",
	"bashls",
	"gh_actions_ls",
	"helm_ls",
	"lua_ls",
	"terraformls",
	"yamlls",
	"gopls",
	"vale_ls",
})

vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true } })
