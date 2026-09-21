local servers = {
	ansiblels = {},
	bashls = {},
	gh_actions_ls = {
		cmd = { "actions-languageserver", "--stdio" },
		filetypes = { "yaml.ghactions" },
	},
	helm_ls = {},
	lua_ls = {},
	terraformls = {},
	yamlls = {},
	gopls = {
		settings = {
			gofumpt = true,
		},
	},
	vale_ls = {},
}

for name, config in pairs(servers) do
	if next(config) ~= nil then
		vim.lsp.config(name, config)
	end
	vim.lsp.enable(name)
end

vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true } })
