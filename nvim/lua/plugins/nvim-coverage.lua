return {
  "andythigpen/nvim-coverage",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("coverage").setup({
      auto_reload = true,
      lang = {
        go = {
          coverage_file = "coverage.out",
        },
      },
    })
  end,
  keys = {
    { "<leader>tc", "<cmd>Coverage<cr>", desc = "Show Coverage" },
    { "<leader>tC", "<cmd>CoverageToggle<cr>", desc = "Toggle Coverage" },
    { "<leader>ts", "<cmd>CoverageSummary<cr>", desc = "Coverage Summary" },
  },
}
