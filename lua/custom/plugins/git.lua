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
    config = function()
      local neogit = require 'neogit'

      neogit.setup {}

      vim.keymap.set('n', '<leader>gg', function()
        neogit.open { kind = 'floating' }
      end, { desc = 'Open Neogit UI floating' })
      vim.keymap.set('n', '<leader>gG', function()
        neogit.open { kind = 'auto' }
      end, { desc = 'Open Neogit UI split' })
    end,
  },
}
