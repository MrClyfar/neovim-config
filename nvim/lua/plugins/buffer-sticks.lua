-- https://github.com/ahkohd/buffer-sticks.nvim
return {
  "ahkohd/buffer-sticks.nvim",
  keys = {
    {
      "<leader>bsj",
      function()
        BufferSticks.jump()
      end,
      desc = "Buffer jump mode",
    },
    {
      "<leader>bst",
      function()
        BufferSticks.toggle()
      end,
      desc = "Toggle Buffer Sticks",
    },
  },
  config = function()
    require("buffer-sticks").setup({
      label = { show = "always" },
      active_char = "──>",
      active_modified_char = "──>(*)", -- Character for active modified buffer (unsaved changes)
      inactive_char = "x",
      inactive_modified_char = "x(*)",
      highlights = {
        active = { fg = "#71d083" },
        inactive = { fg = "#d38282" },
        active_modified = { fg = "#71d083" },
        inactive_modified = { fg = "#d38282" },
        label = { fg = "#aaaaaa", italic = true },
      },
    })
  end,
}

