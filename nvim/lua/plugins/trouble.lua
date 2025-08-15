-- ~/.config/nvim/lua/plugins/trouble.lua
return {
  "folke/trouble.nvim",
  opts = {
    modes = {
      symbols = {
	    focus = true,
		win = {
          size = 0.4, -- 40% of the window
        },
      },
    },
  },
}