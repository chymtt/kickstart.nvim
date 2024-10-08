return {
  {
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'nordic'
    end,
  },
  -- {
  --   'fcancelinha/nordern.nvim',
  --   branch = 'master',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'nordern'
  --   end,
  --   config = function()
  --     require('nordern').setup {
  --       transparent = false, -- turns the background transparent.
  --       brighter_comments = true, -- changes the shade of comments to be brighter and easier to read.
  --       italic_comments = true, -- italicizes the comments.
  --     }
  --   end,
  -- },

  -- {
  --   'sainnhe/gruvbox-material',
  --   priority = 1000,
  --   config = function()
  --     vim.o.background = 'dark' -- or "light" for light mode
  --     vim.cmd "let g:gruvbox_material_background= 'hard'"
  --     vim.cmd 'let g:gruvbox_material_transparent_background=2'
  --     vim.cmd 'let g:gruvbox_material_diagnostic_line_highlight=1'
  --     vim.cmd "let g:gruvbox_material_diagnostic_virtual_text='colored'"
  --     vim.cmd 'let g:gruvbox_material_enable_bold=1'
  --     vim.cmd 'let g:gruvbox_material_enable_italic=1'
  --     vim.cmd [[colorscheme gruvbox-material]] -- Set color scheme
  --     -- changing bg and border colors
  --     vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
  --     vim.api.nvim_set_hl(0, 'LspInfoBorder', { link = 'Normal' })
  --     vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
  --   end,
  -- },

  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --   end,
  --   config = function()
  --     require('catppuccin').setup {
  --       integrations = {
  --         nvimtree = false,
  --         cmp = true,
  --         neotree = true,
  --         treesitter = true,
  --         fidget = true,
  --         gitgutter = true,
  --         mini = {
  --           enabled = true,
  --           indentscope_color = '',
  --         },
  --         navic = {
  --           enabled = true,
  --           custom_bg = 'NONE', -- "lualine" will set background to mantle
  --         },
  --         window_picker = true,
  --         which_key = true,
  --       },
  --     }
  --   end,
  -- },
}
