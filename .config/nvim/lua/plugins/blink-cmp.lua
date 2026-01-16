return {
  {
    'saghen/blink.cmp',
    version = '1.*',

    -- mini.snippets as a dependency
    dependencies = { 'rafamadriz/friendly-snippets', 'echasnovski/mini.snippets' },

    opts = {
      -- use mini_snippets instead of the default
      -- snippets = { preset = 'mini_snippets' },

      keymap = {
        preset = "default",
        ['<CR>'] = { 'select_and_accept', 'fallback' },
        ['<C-l>'] = { 'snippet_forward', 'fallback' },
        ['<C-h>'] = { 'snippet_backward', 'fallback' },
      },

      appearance = { nerd_font_variant = 'mono' },
      completion = { list = { selection = { preselect = false } }, documentation = { auto_show = true } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
      cmdline = { keymap = { preset = 'inherit' } },
    },
    opts_extend = { "sources.default" }
  }
}
