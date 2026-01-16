return {
  {
    "sindrets/diffview.nvim",
    -- Lazy load on these specific commands
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewFocusFiles" },
    opts = {
      merge_tool = {
        layout = "diff4_mixed",
      },
      file_panel = {
        win_config = {
          position = "left",
          width = 25,
        },
      },
    },
  },
}
