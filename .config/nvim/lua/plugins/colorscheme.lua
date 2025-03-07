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
  { "ellisonleao/gruvbox.nvim" },
  { "water-sucks/darkrose.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "kepano/flexoki-neovim", name = "flexoki" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
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
