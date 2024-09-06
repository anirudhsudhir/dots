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
  --
  -- Theme toggle
  -- "f-person/auto-dark-mode.nvim",
  -- opts = {
  --   update_interval = 1000,
  --   set_light_mode = function()
  --     -- vim.cmd("colorscheme catpuccin")
  --   end,
  --   set_dark_mode = function()
  --     vim.api.nvim_set_option_value("background", "dark", {})
  --     -- vim.cmd("colorscheme tokyonight")
  --   end,
  -- },
  --
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
  --
  -- -- Configure LazyVim to load gruvbox
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   config = function()
  --     vim.o.background = "dark"
  --   end,
  -- },
}
