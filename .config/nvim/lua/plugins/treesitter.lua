return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
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
				},

				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
