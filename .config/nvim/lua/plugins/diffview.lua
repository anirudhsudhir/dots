return {
  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
    opts = {
      merge_tool = {
        layout = "diff4_mixed",
      },
      file_panel = {
        win_config = { -- See |diffview-config-win_config|
          position = "left",
          width = 25,
          win_opts = {},
        },
      },
    },
  },

}
