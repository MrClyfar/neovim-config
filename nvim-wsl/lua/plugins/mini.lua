-- https://github.com/nvim-mini/mini.nvim
-- old name "echasnovski/mini.nvim"
return {
  "nvim-mini/mini.nvim",
  version = false,
  config = function()
    require("mini.trailspace").setup()
    require("mini.diff").setup()
  end,
}
