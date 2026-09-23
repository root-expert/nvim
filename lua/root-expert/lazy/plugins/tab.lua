return {
  {
    "nvim-mini/mini.tabline",
    version = "*",
    event = { "VeryLazy" },
    config = function()
      require("mini.tabline").setup()
    end,
  },
}
