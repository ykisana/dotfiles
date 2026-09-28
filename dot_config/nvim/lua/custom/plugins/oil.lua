return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} } },
  lazy = false,
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory' },
  },
}
