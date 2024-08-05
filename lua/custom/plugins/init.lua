return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'mrjones2014/smart-splits.nvim', -- Navigation between splits, smarter splits sizing
  'stevearc/dressing.nvim', -- Extends nvim UI for stuff like rename, etc.
  'norcalli/nvim-colorizer.lua', -- Displays colors in the code
  { 'numToStr/Comment.nvim', opts = {} },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } }, -- Highlight todo, notes, etc in comments
  { -- current code context on statusline
    'SmiteshP/nvim-navic',
    opts = {
      highlight = true,
    },
  },
  {
    'derektata/lorem.nvim',
    config = function()
      local lorem = require 'lorem'
      lorem.setup {
        sentenceLength = 'mixedShort',
        comma = 1,
      }
    end,
  },
  {
    'kosayoda/nvim-lightbulb',
    opts = {
      autocmd = { enable = true },
    },
  },
  {
    'm4xshen/hardtime.nvim',
    dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
    opts = {
      disabled_keys = {
        ['<Up>'] = { '', 'i' },
        ['<Down>'] = { '', 'i' },
        ['<Left>'] = {},
        ['<Right>'] = {},
      },
    },
  },
}
