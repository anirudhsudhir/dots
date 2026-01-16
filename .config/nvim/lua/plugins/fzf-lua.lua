return {
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    dependencies = { "echasnovski/mini.icons" },
    config = function()
      require('fzf-lua').register_ui_select()
    end,
    opts = {},
  },
}
