-- https://github.com/riodelphino/diagnostic-toggle.nvim
-- A Neovim plugin that lets you switch between pre-configured diagnostic styles on the fly.
return {
  "riodelphino/diagnostic-toggle.nvim",
  event = { "LspAttach" },
  config = function()
    require("diagnostic-toggle").setup({})
  end,
  keys = {}, -- See `## Keymaps` section
}
