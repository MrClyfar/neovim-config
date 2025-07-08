return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        fullscreen = true, -- fullscreen for all pickers by default
      },
      sources = {
        explorer = {
          layout = { fullscreen = false }, -- override for explorer picker
        },
      },
    }, 
  },
}