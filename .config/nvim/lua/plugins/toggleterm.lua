return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-/>]],
        direction = "horizontal",
        size = 20,
      })
    end,
  },
}
