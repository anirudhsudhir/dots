return {
  {
    "stevearc/conform.nvim",
    -- Load before saving to ensure formatting happens first
    event = { "BufWritePre" },
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback", -- Use LSP formatters as fallback
      },

      formatters_by_ft = {
        rust = { "rustfmt" },
        go = { "goimports", "gofmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "ruff" },
        sh = { "shfmt" },
        lua = { "stylua" },

        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        -- yaml = { "prettierd" },
      },

      formatters = {
        injected = { options = { ignore_errors = true } },
      },
    },
    config = function(_, opts)
      require("conform").setup(opts)

      vim.keymap.set({ "n", "v" }, "<leader>cf", function()
        require("conform").format({
          async = true,
          lsp_format = "fallback"
        })
      end, { desc = "Format Current Buffer (conform)" })
    end,
  },
}
