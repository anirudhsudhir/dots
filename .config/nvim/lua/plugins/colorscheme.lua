return {
  { "water-sucks/darkrose.nvim" },

  { "kepano/flexoki-neovim"},

  { "ellisonleao/gruvbox.nvim" },

  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "material"
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = 1
      vim.api.nvim_set_option_value("background", "dark", {})
    end,
  },

  { "rebelot/kanagawa.nvim"},

  { "rose-pine/neovim", name = "rose-pine" },

  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'light'
      require('solarized').setup(opts)
      vim.cmd.colorscheme 'solarized'
    end,
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
  --
  
{
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"darkrose", "flexoki-light", "flexoki-dark", "gruvbox", "gruvbox-material", "kanagawa-dragon", "kanagawa-lotus", "kanagawa-wave",
          "rose-pine", "solarized", "tokyonight-day", "tokyonight-moon", "tokyonight-night", "tokyonight-storm"},
        livePreview = true,
      })
    end
  }
}
