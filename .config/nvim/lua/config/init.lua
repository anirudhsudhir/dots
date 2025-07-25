vim.g.mapleader = " "

require("config.lazy_init")

vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank

vim.opt.number = true
vim.opt.relativenumber = true

vim.api.nvim_set_hl(0, "StatuslineGit", { fg = "#191724", bg = "#eb6f92" })
vim.opt.statusline =
" [%{mode()}]%h %f %m%r %#StatuslineGit#%{get(b:,'gitsigns_status','')}%* %= %y %{&fileencoding} %l:%c ♥  "
vim.opt.list = true
-- vim.opt.listchars="eol:↲,lead:·,trail:~,tab:>>"
vim.opt.listchars = "eol:↲,trail:~,tab:>>"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true -- incremental search

-- vim.opt.background = "dark"
vim.cmd.colorscheme("gruvbox-material")
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"

vim.diagnostic.config({ virtual_lines = true })

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" } }
    }
  }
})
