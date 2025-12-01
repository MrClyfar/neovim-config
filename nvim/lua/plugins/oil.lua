-- https://github.com/stevearc/oil.nvim

-- Custom function for displaying the current directory in the winbar
function _G.get_oil_winbar()
  local dir = require("oil").get_current_dir()
  if dir then
    return vim.fn.fnamemodify(dir, ":~") -- ":~" simplifies home dir to "~"
  else
    -- If there is no dir, just return the current buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

return {
  "stevearc/oil.nvim",
  opts = {
    win_options = {
      -- This sets the winbar to call the function we defined above
      winbar = "%!v:lua.get_oil_winbar()",
    },
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
    },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
