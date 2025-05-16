vim.g.mapleader = " "

require("config.lazy_init")

vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
 
vim.opt.number = true         
vim.opt.relativenumber = true
 
vim.api.nvim_set_hl(0, "StatuslineGit", { fg = "#191724", bg = "#eb6f92" })
vim.opt.statusline =
" [%{mode()}]%h %f %m%r %#StatuslineGit#%{get(b:,'gitsigns_status','')}%* %= %y %{&fileencoding} %l:%c ♥  "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
 
vim.opt.wrap = false
 
vim.opt.incsearch = true -- incremental search
 
vim.opt.termguicolors = true

vim.diagnostic.config({ virtual_lines = true })
