vim.g.mapleader = " "

require("config.lazy_init")

vim.opt.clipboard = 'unnamedplus'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.list = true
vim.opt.listchars = {
  tab = "  ",
  trail = "~"
  -- eol = "↲"
}

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.incsearch = true

vim.cmd.colorscheme("tokyonight")
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
