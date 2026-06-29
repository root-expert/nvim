vim.lsp.config("gh_actions_ls", {
	cmd = { "actions-languageserver", "--stdio" },
	filetypes = { "yaml.ghactions" },
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
})
