return {
  { "water-sucks/darkrose.nvim" },

  { "kepano/flexoki-neovim" },

  { "ellisonleao/gruvbox.nvim" },

  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "material"
      -- vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = 1
      -- vim.api.nvim_set_option_value("background", "dark", {})
    end,
  },

  { "rebelot/kanagawa.nvim" },

  { "rose-pine/neovim",     name = "rose-pine" },

  {
    "folke/tokyonight.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },

  {
    "nickkadutskyi/jb.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- {
  --   -- Theme toggle
  --   "f-person/auto-dark-mode.nvim",
  --   opts = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       vim.api.nvim_set_option_value("background", "dark", {})
  --       vim.cmd("colorscheme gruvbox-material")
  --     end,
  --     set_light_mode = function()
  --       vim.api.nvim_set_option_value("background", "light", {})
  --       vim.cmd("colorscheme NeoSolarized")
  --     end,
  --   },
  -- },
  --

  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = { "darkrose", "flexoki-light", "flexoki-dark", "gruvbox", "gruvbox-material", "jb", "kanagawa-dragon",
          "kanagawa-lotus", "kanagawa-wave",
          "NeoSolarized", "rose-pine", "tokyonight-day", "tokyonight-moon", "tokyonight-night", "tokyonight-storm" },
        livePreview = true,
      })
    end
  }
}
