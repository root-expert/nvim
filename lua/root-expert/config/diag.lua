vim.diagnostic.config({ virtual_text = false, float = { focusable = false, border = "rounded" } })

-- Show diagnostic popup automatically on cursor hold
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
