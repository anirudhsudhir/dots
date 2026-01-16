return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    require('mini.basics').setup({})
    require('mini.icons').setup({})
    require('mini.move').setup({})
    require('mini.notify').setup({})
    require('mini.sessions').setup({})
    -- require('mini.snippets').setup({
    --   opts = {
    --     expand = {
    --       insert = function(snippet)
    --         -- The default is often a complex string.
    --         -- You can return a simple character instead:
    --         return '┃'
    --       end,
    --     },
    --     snippets = {
    --       require('mini.snippets').gen_loader.from_runtime('snippets/*.json'),
    --       require('mini.snippets').gen_loader.from_lang(),
    --     },
    --   },
    -- })
    require('mini.statusline').setup({})
    -- require('mini.surround').setup({})
    require('mini.pairs').setup({})
  end
}
