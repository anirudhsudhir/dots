return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Languages: Bash, C/C++, Go, Python, Rust, TOML, Typst
        "bash-language-server",
        "clangd",
        "clang-format",
        "gopls",
        "gofumpt",
        "goimports",
        "pyright",
        "ruff",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "sqls",
        "tinymist",
        "taplo", --TOML
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  }
}
