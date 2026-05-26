return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,         -- This enables transparency
      styles = {
        sidebars = "transparent", -- Makes nvim-tree/sidebar transparent
        floats = "transparent",   -- Makes popups/telescope transparent
      },
    },
  },
}
