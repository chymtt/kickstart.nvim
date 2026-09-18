return {
  -- {
  --   'iamcco/markdown-preview.nvim',
  --   event = 'VeryLazy',
  --   cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  --   build = 'cd app && yarn install',
  --   init = function()
  --     vim.g.mkdp_filetypes = { 'markdown' }
  --     vim.cmd 'let g:mkdp_auto_start = 0'
  --     vim.cmd 'let g:mkdp_refresh_slow = 0'
  --     vim.cmd "let g:mkdp_theme= 'light'"
  --   end,
  --   ft = { 'markdown' },
  -- },
  --
  -- {
  --   'preservim/vim-markdown',
  --   dependencies = 'godlygeek/tabular',
  --
  --   config = function()
  --     vim.cmd 'let g:vim_markdown_folding_disabled = 1'
  --     vim.cmd 'let g:vim_markdown_folding_style_pythonic = 1'
  --   end,
  -- },

  --- Image preview in neovim
  -- {
  --   'vhyrro/luarocks.nvim',
  --   priority = 1001, -- this plugin needs to run before anything else
  --   opts = {
  --     rocks = { 'magick' },
  --   },
  -- },
  -- {
  --   '3rd/image.nvim',
  --   dependencies = { 'luarocks.nvim' },
  --   config = function()
  --     local img = require 'image'
  --     img.setup {
  --       -- backend = 'ueberzug',
  --       backend = 'kitty',
  --       integrations = {
  --         markdown = {
  --           enabled = true,
  --           clear_in_insert_mode = false,
  --           download_remote_images = true,
  --           only_render_image_at_cursor = true,
  --           filetypes = { 'markdown', 'vimwiki' }, -- markdown extensions (ie. quarto) can go here
  --         },
  --       },
  --       tmux_show_only_in_active_window = true,
  --     }
  --   end,
  -- },
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    config = function()
      local presets = require 'markview.presets'

      require('markview').setup {
        preview = {
          icon_provider = 'devicons', -- "mini" or "devicons" or "internal"
        },
        markdown = {
          enable = true,
          headings = presets.headings.glow,
          horizontal_rules = presets.horizontal_rules.dotted,
          tables = presets.tables.single,
          block_quotes = presets.block_quotes.obsidian,
        },
      }

      -- markview only regenerates its MarkviewPalette*/MarkviewHeading* highlight
      -- groups on VimEnter/ColorScheme. The colorscheme (nordic, priority 1000)
      -- is applied before markview loads, so those events are missed and the
      -- highlight groups stay undefined -- the presets then render with no color.
      -- Generate them once here against the already-active colorscheme.
      require('markview.highlights').setup()
    end,

    -- Completion for `blink.cmp`
    -- dependencies = { "saghen/blink.cmp" },
  },
}
