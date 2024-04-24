-- See the kickstart.nvim README for more information
return {
  -- trivially replace surrounding pairs
  'tpope/vim-surround',
  -- highlight other uses of the word under the cursor
  'RRethy/vim-illuminate',
  {
    -- add context on top of window
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      max_lines = 10,
      separator = '-',
    },
  },
  {
    -- Theme
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      no_italic = true,
      transparent_background = true,
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    -- <Esc> mappings
    'max397574/better-escape.nvim',
    opts = {
      mapping = { 'jk', 'jj' },   -- a table with mappings to use
      timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
      clear_empty_lines = false,  -- clear line after escaping if there is only whitespace
      keys = '<Esc>',             -- keys used for escaping, if it is a function will use the result everytime
      -- example(recommended)
      -- keys = function()
      --   return vim.api.nvim_win_get_cursor(0)[2] > 1 and '<esc>l' or '<esc>'
      -- end,
    },
  },
}
