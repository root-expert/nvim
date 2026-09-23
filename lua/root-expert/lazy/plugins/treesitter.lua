return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")
      local langs = {
        "lua",
        { "terraform", { "terraform", "terraform-vars" } },
        "hcl",
        "helm",
        "yaml",
        "puppet",
        "bash",
        "vimdoc",
        "vim",
        "markdown",
        "go",
        "sql",
        "rego",
        "python",
        "toml",
      }
      local parsers = {}
      local filetypes = {}

      for _, entry in ipairs(langs) do
        local lang, fts
        if type(entry) == "table" then
          lang, fts = entry[1], entry[2]
        else
          lang, fts = entry, { entry }
        end

        table.insert(parsers, lang)
        for _, ft in ipairs(fts) do
          table.insert(filetypes, ft)
        end
      end
      ts.install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
