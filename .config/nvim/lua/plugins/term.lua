return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      float_opts = {
        border = "curved",
        colors = "white",
      },
      direction = "horizontal",
      size = 20,
    },
    keys = {
      {
        "<C-/>",
        function()
          vim.cmd("ToggleTerm direction=horizontal")
        end,
      },
    },
  },
}
