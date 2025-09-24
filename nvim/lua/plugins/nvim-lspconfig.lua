return {
  -- This line targets the gopls configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              -- The key setting to change the formatting tool
              formatter = "gofmt", 
            },
          },
        },
      },
    },
  },
}