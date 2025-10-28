--https://github.com/KijitoraFinch/nanode.nvim
return {
  "KijitoraFinch/nanode.nvim",
  priority = 1000,
  config = function()
    require("nanode").setup({
      transparent = true,
    })
    vim.cmd.colorscheme("nanode")
  end,
}
