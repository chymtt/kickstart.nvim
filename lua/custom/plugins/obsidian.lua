return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = 'chym',
        path = '~/Documents/Obsidian Vault/Chym Notes',
      },
    },
  },
  keys = {
    { '<leader>od', '<cmd>Obsidian today<cr>', desc = 'Obsidian daily note' },
    { '<leader>oo', '<cmd>Obsidian open<cr>', desc = 'Open Obsidian' },
    { '<leader>of', '<cmd>Obsidian quick_switch<cr>', desc = 'Obsidian quick switch' },
    { '<leader>os', '<cmd>Obsidian search<cr>', desc = 'Search Obsidian notes' },
    { '<leader>oT', '<cmd>Obsidian toc<cr>', desc = 'Table of contents' },
  },
}
