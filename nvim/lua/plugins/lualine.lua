-- https://github.com/nvim-lualine
return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "papercolor_dark", --gruvbox_light",
    },
    sections = {
      -- lualine_a = { "mode" },
      -- lualine_b = { "branch", "diff", "diagnostics" },
      -- lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
    },
  },
}
