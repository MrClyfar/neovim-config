-- https://github.com/RostislavArts/naysayer.nvim

return {
  'RostislavArts/naysayer.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd.colorscheme('naysayer')
  end,
}