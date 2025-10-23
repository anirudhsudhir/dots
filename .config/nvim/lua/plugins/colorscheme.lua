return {
  { "water-sucks/darkrose.nvim" },

  { "kepano/flexoki-neovim" },

  { "ellisonleao/gruvbox.nvim" },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'dark'

      vim.g.gruvbox_material_colors_override = {
        bg0 = { '#1a1b26', '1' },
      }

      -- vim.g.gruvbox_material_transparent_background = 1
      vim.cmd.colorscheme('gruvbox-material')
    end,
  },

  { "rebelot/kanagawa.nvim" },

  { "rose-pine/neovim",     name = "rose-pine" },

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
      
      on_highlights = function(hl, c)
        hl["@keyword"] = { italic = true }
        hl["@keyword.function"] = { italic = true }
        hl["@keyword.operator"] = { italic = true }
        hl["@keyword.return"] = { italic = true }
        hl["@keyword.repeat"] = { italic = true }
        hl["@keyword.conditional"] = { italic = true }
        hl["@keyword.exception"] = { italic = true }
        hl["@keyword.import"] = { italic = true }
        hl["@keyword.coroutine"] = { italic = true }
        hl["@keyword.modifier"] = { italic = true }
        hl["@keyword.type"] = { italic = true }
        hl["Keyword"] = { italic = true }
        
        -- Bash/shell specific
        hl["@function.builtin.bash"] = { fg = c.cyan, italic = true }
    end,
  },
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

