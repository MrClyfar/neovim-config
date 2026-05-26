-- https://github.com/Cpoing/microscope.nvim
return {
  "Cpoing/microscope.nvim",
  cmd = "MicroscopePeek",
  keys = {
    { "<leader>r", ":MicroscopePeek<CR>", desc = "Peek definition" },
  },
  config = function()
    require("microscope")
  end,
}
