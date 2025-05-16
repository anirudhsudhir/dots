vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("fzf-lua").files()
  end
})
