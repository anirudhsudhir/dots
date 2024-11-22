return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "material"
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = 1
      vim.api.nvim_set_option_value("background", "dark", {})
    end,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  --
  { "kepano/flexoki-neovim", name = "flexoki" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
  -- {
  --   -- Theme toggle
  --   "f-person/auto-dark-mode.nvim",
  --   opts = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       -- vim.api.nvim_set_option_value("background", "dark", {})
  --       vim.cmd("colorscheme flexoki-light")
  --     end,
  --     set_light_mode = function()
  --       -- vim.api.nvim_set_option_value("background", "light", {})
  --       vim.cmd("colorscheme flexoki-light")
  --     end,
  --   },
  -- },
}
