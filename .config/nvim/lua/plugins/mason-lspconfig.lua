return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- LSP servers for nvim-lspconfig
      ensure_installed = {
        "bashls",
        "clangd",
        "cmakels",
        "cssls",
        "gopls",
        "html",
        "lua_ls",
        "pyright",
        "ruff_lsp",
        "rust_analyzer",
        "sqls",
        "tinymist",
        "taplo",
        "yamlls",
        "zls",
      },
      automatic_installation = true,
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          -- Other Mason tools
          ensure_installed = {
            "clang-format",
            "goimports",
            "shellcheck",
            "shfmt",
            "stylua",
            "ruff",
          },
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
}
