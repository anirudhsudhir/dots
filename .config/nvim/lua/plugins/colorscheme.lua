return {
  { "rebelot/kanagawa.nvim" },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      style = "night",
      comments = { italic = true },
      keywords = { italic = true },
      functions = { italic = true },
      variables = { italic = true },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin"
  },

  {
    "rose-pine/neovim",
    name = "rose-pine"
  },

  { "EdenEast/nightfox.nvim" }
}
