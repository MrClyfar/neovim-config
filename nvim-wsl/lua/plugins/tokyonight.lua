return {
  "folke/tokyonight.nvim", -- The plugin name
  opts = {
    style = "storm",
    on_highlights = function(hl, c)
      hl.LineNrAbove = {
        fg = "#dde2e4",
      }
      hl.LineNrBelow = {
        fg = "#dde2e4",
      }

      hl.Comment = { fg = "#3a7e97" }
    end,
  },
}
