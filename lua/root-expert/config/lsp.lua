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
      gopls = {
        gofumpt = true,
      },
    },
  },
  vale_ls = {},
  rumdl = {},
}

for name, config in pairs(servers) do
  if next(config) ~= nil then
    vim.lsp.config(name, config)
  end
  vim.lsp.enable(name)
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspCompletion", {}),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end

    if client:supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({
            bufnr = args.buf,
            id = client.id,
            timeout_ms = 1000,
            async = false,
          })
        end,
      })
    end
  end,
})

vim.keymap.set('n', '<leader>fmt', function()
  vim.lsp.buf.format({ async = false })
end, { desc = 'Format document' })
