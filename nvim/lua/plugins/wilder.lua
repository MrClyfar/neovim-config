return {
  "gelguy/wilder.nvim",
  event = "CmdlineEnter",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for icons
  },
  config = function()
    local wilder = require("wilder")
    wilder.setup({ modes = { ":", "?" } })
    -- Basic configuration; you can add more for fuzzy matching, popupmenu, etc.
    wilder.set_option("renderer", wilder.popupmenu_renderer({
      highlighter = wilder.basic_highlighter(),
    }))
  end,
}