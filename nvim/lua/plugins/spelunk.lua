-- https://github.com/EvWilson/spelunk.nvim
return {
  "EvWilson/spelunk.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim", -- Optional: for fuzzy search capabilities
    "folke/snacks.nvim", -- Optional: for fuzzy search capabilities
    "ibhagwan/fzf-lua", -- Optional: for fuzzy search capabilities
    "nvim-treesitter/nvim-treesitter", -- Optional: for showing grammar context
    "nvim-lualine/lualine.nvim", -- Optional: for statusline display integration
  },
  config = function()
    require("spelunk").setup({
      enable_persist = true,
    })
  end,
}
