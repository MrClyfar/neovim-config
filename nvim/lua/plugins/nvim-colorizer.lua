--https://github.com/norcalli/nvim-colorizer.lua
return {
  "norcalli/nvim-colorizer.lua",

  -- The 'event' tells lazy.nvim when to load the plugin.
  -- 'VimEnter' ensures it's available after Neovim starts.
  event = "VimEnter",

  -- The 'config' function runs after the plugin is successfully loaded.
  config = function()
    -- This is the standard call to set up the plugin with default settings.
    require("colorizer").setup()
  end,
}
