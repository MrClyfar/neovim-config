--https://github.com/alexkotusenko/nightgem.nvim
return {
  "alexkotusenko/nightgem.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nightgem").setup()
    vim.cmd("colorscheme nightgem")
  end,
}
