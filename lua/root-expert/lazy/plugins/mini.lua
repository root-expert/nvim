return {
  {
    "nvim-mini/mini.icons",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      require("mini.icons").setup()
      MiniIcons.mock_nvim_web_devicons()
    end,
  },
  {
    "nvim-mini/mini.statusline",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      require("mini.statusline").setup()
    end,
  },
  {
    "nvim-mini/mini.comment",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      require("mini.comment").setup()
    end,
  },
  {
    "nvim-mini/mini.move",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      require("mini.move").setup()
    end,
  },
  {
    "nvim-mini/mini.splitjoin",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      local sj = require("mini.splitjoin")
      sj.setup({
        join = {
          hooks_post = { sj.gen_hook.pad_brackets() },
        },
      })
    end,
  },
}
