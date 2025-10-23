return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "clang-format",
        "goimports",
        "prettierd",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
    lazy = false,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- LSP servers for nvim-lspconfig
      ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "gopls",
        "html",
        "lua_ls",
        "neocmake",
        "pyright",
        "rust_analyzer",
        "tinymist",
        "yamlls",
        "zls",
      },
      automatic_installation = true,
    },
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    lazy = false,
  },
}
