return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.window = {
      completion = cmp.config.window.bordered({
        max_width = 80,
        max_height = 20,
      }),
      documentation = cmp.config.window.bordered({
        max_width = 80,
        max_height = 20,
      }),
    }

    return opts
  end,
}
