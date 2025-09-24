-- https://github.com/dasvh/taskfile.nvim
return {
  "dasvh/taskfile.nvim",
  config = function()
    require("taskfile").setup({
	  layout = "vertical", -- Layout: 'h', 'horiz', 'horizontal' or 'v', 'vert', 'vertical'.
                         -- For 'horizontal' layout, list and preview are side-by-side.
                         -- For 'vertical', list is above preview (vertically stacked).
	})
  end,
}