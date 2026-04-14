return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",

    init = function()
      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          -- Enable treesitter highlighting and disable regex syntax
          pcall(vim.treesitter.start)
          -- Enable treesitter-based indentation
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })

      local ensureInstalled = {
        "asm",
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "csv",
        "cuda",
        "dockerfile",
        "dot", --Graphviz DOT
        "fish",
        "git_rebase",
        "gitcommit",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "make",
        "nasm",
        "python",
        "regex",
        "rust",
        "sql",
        "toml",
        "typst",
        "yaml",
      }

      local alreadyInstalled = require('nvim-treesitter.config').get_installed()
      local parsersToInstall = vim.iter(ensureInstalled)
          :filter(function(parser)
            return not vim.tbl_contains(alreadyInstalled, parser)
          end)
          :totable()
      require('nvim-treesitter').install(parsersToInstall)
    end
  },
}
