require("which-key").add({
  {
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Buffer Local Keymaps (which-key)",
  },

  {
    {
      "<leader>s",
      group = "Window",
    },
    {"<leader>sv", "<cmd>vsp<cr>", desc = "Split window vertically" },
    {"<leader>sh", "<cmd>sp<cr>", desc = "Split window horizontally" },
    {"<leader>se", "<C-w>=", desc = "Make splits equal size" },
    {"<leader>sx", "<cmd>close<cr>", desc = "Close current split" },
  },

  {
    {"<C-h>", "<C-w>h", desc = "Switch to the left window" },
    {"<C-l>", "<C-w>l", desc = "Switch to the right window" },
    {"<C-j>", "<C-w>j", desc = "Switch to the lower window" },
    {"<C-k>", "<C-w>k", desc = "Switch to the upper window" },
  },

  {
    {
      "b",
      group = "Buffer",
    },
    {"bd", "<cmd>bdelete<cr>", desc = "Close the current buffer"},
    {"bp", "<cmd>bprevious<cr>", desc = "Go to the previous buffer"},
    {"bn", "<cmd>bnext<cr>", desc = "Go to the next buffer"},
  },

  {
    "<leader>cf",
    function()
      local pos = vim.api.nvim_win_get_cursor(0)
      vim.cmd([[norm! gg=G]])
      vim.api.nvim_win_set_cursor(0, pos)
    end,
    desc = "Format",
  },
  {
    "<leader>r",
    function()
      vim.cmd([[luafile %]])
    end,
    desc = "Reload current Lua config",
  },

  {
    "<leader><leader>",
    function()
      require("fzf-lua").files()
    end,
    desc = "Fzf",
  },
  {
    "<leader>/",
    function()
      require("fzf-lua").live_grep()
    end,
    desc = "Live grep",
  },
  {
    "bf",
    function()
      require("fzf-lua").buffers()
    end,
    desc = "Fzf Buffers",
  },

  {
    "<leader>e",
    function()
      require("neo-tree.command").execute({})
    end,
    desc = "Neotree",
  },

  {
    "<leader>E",
    function()
      require("oil").open_float(".")
    end,
    desc = "Oil",
  },

  {
    "<leader>c",
    group = "Code",

  },

  {
    "<leader>x",
    group = "Trouble - Diagnostics",

  },
})
