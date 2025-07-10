return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- Languages: Bash, C/C++, Go, Python, Rust, TOML, Typst, YAML
        "bash-language-server",
        "clangd",
        "clang-format",
        "cmake",
        "cssls",
        "gopls",
        "gofumpt",
        "goimports",
        "html",
        "pyright",
        "ruff",
        "rust",
        "shellcheck",
        "shfmt",
        "stylua",
        "sqls",
        "tinymist",
        "taplo", --TOML
        "yamlls",
        "zig",
      },
      automatic_installation = true,
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
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
