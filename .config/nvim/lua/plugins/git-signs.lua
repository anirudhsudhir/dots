return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
      },
      on_attach = function()
        local gs = require("gitsigns")
        vim.keymap.set("n", "<leader>gb", gs.blame)
      end,
    },
  },
}
