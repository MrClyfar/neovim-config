-- https://github.com/folke/trouble.nvim
-- ~/.config/nvim/lua/plugins/trouble.lua
-- This is the Document Symbols window.
return {
  "folke/trouble.nvim",
  opts = {
    win = {
      size = 0.4,
    },
    modes = {
      symbols = {
        focus = true,
        -- win = {
        --   size = 0.4, -- 40% of the window
        -- },
      },
      lsp_references = {
        params = {
          include_declaration = true,
        },
      },
    },
  },
}
