return {
  'tpope/vim-fugitive',
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      { -- optional - Diff integration
        'sindrets/diffview.nvim',
        config = function()
          local actions = require('diffview.config').actions
          require('diffview').setup {
            view = {
              merge_tool = {
                layout = 'diff3_mixed',
              },
            },
          }
        end,
      },

      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      -- 'ibhagwan/fzf-lua', -- optional
      -- 'echasnovski/mini.pick', -- optional
    },
    config = true,
  },
}
