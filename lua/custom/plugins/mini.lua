return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- Extend jumping with [ and ]
    require('mini.bracketed').setup {
      buffer = { suffix = 'b', options = {} },
      comment = { suffix = 'c', options = {} },
      conflict = { suffix = 'x', options = {} },
      diagnostic = { suffix = 'd', options = {} },
      file = { suffix = '', options = {} },
      indent = { suffix = '', options = {} },
      jump = { suffix = '', options = {} },
      location = { suffix = '', options = {} },
      oldfile = { suffix = '', options = {} },
      quickfix = { suffix = 'q', options = {} },
      treesitter = { suffix = 't', options = {} },
      undo = { suffix = 'u', options = {} },
      window = { suffix = '', options = {} },
      yank = { suffix = '', options = {} },
    }

    -- Highlight the word under the cursor
    require('mini.cursorword').setup()
  end,
}
