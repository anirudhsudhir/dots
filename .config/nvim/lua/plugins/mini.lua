return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    -- require('mini.animate').setup({})
    require('mini.tabline').setup({})
    require('mini.icons').setup({})
    require('mini.move').setup({})
    require('mini.sessions').setup({})
    require('mini.pairs').setup({})
  end
}
