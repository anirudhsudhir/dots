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
        vim.keymap.set("n", "<leader>gb", gs.blame_line)
        vim.keymap.set("n", "<leader>rh", gs.reset_hunk)
        vim.keymap.set("n", "<leader>rb", gs.reset_buffer)
        vim.keymap.set("n", "]g", gs.next_hunk)
        vim.keymap.set("n", "[g", gs.prev_hunk)
      end,
    },
  },
}

