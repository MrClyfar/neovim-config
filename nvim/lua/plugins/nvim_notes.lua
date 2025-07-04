return {
  'adibhanna/nvim-notes',
  dependencies = {
    'MunifTanjim/nui.nvim', -- Required for beautiful UI components
  },
  config = function()
    require('nvim-notes').setup({
      -- Your configuration here
    })
  end,
}