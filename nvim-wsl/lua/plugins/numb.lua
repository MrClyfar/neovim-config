-- https://github.com/nacro90/numb.nvim
-- numb.nvim is a Neovim plugin that peeks lines of the buffer in non-obtrusive way.
return {
  "nacro90/numb.nvim",
  config = function()
    require("numb").setup()
  end,
}
