return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- Languages: Bash, C/C++, Go, Python, Rust, TOML, Typst
				"bash-language-server",
				"clangd",
				"clang-format",
				"gopls",
				"gofumpt",
				"goimports",
				"ruff",
				"rust-analyzer",
				"shellcheck",
				"shfmt",
				"stylua",
				"sqls",
				"tinymist",
				"taplo", --TOML
			},
		},
	},
}
